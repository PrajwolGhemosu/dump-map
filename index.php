<?php
$API="AIzaSyDokVF34B2gYxf7HakwlLxMzUKYz-aRvEY";
$DATABASE = "map"; //database name
$USER_NAME="root"; //database username root default
$PWD="r00t";     //database password
$CONN_STRING="mysql:host=localhost;dbname=".$DATABASE;
function doconn(){
	global $CONN_STRING,$USER_NAME,$PWD;
	$status;
	try{
		  $conn = new PDO($CONN_STRING,$USER_NAME,$PWD,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
		  $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);  
		  $status=$conn;
	  }
	 catch(Exception $e)
	 {
			$status = $e->getMessage();
	 }
	 return $status;
}
!$conn = doconn();
$stmt = $conn->prepare("SELECT * FROM mapdata");
		  $stmt->execute(array());
		  $rows = $stmt->fetchall(PDO::FETCH_OBJ);
$locations='';
$i=1;
foreach($rows as $row){
	
$locations .= ($i!=1 ?',' : ''). "{coords:{lat:$row->lat,lng:$row->lng},iconImage:'".$row->image."',content:'<h1>".$row->content."</h1>'}";
	$i++;
}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Google Map</title>
	<style>
		#map{height: 550px;width: 100%;}
	</style>
</head>

<body>
	<h1>My Map</h1>
	<div id="map"></div>
	<script>
	function initMap(){
		var options={
		zoom:8,
		center:{lat:27.0471,lng:87.6084}
	}
		
		var map  = new google.maps.Map(document.getElementById('map'),options);
		
		//add marker
		var markers = [<?=$locations?>];
		for ( var i=0; i < markers.length; i++){
			addMarker(markers[i]);
		}
				
		//adding function add marker
		function addMarker(props){
			var marker = new google.maps.Marker({
			position:props.coords,
			map:map
			
		});
			//checking icon
			if(props.iconImage)
				{
					marker.setIcon(props.iconImage);
				}
			
			//check content
			if(props.content){
			   var infowindow = new google.maps.InfoWindow({
			content:props.content
		});
		marker.addListener('click',function(){
			infowindow.open(map,marker);
		});
			   }
		}
	}
	
	</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=<?=$API?>&callback=initMap">
    </script>
<a href="default.php">Default</a>
</body>
</html>