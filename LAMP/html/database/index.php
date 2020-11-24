<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>PHP DB Website demo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0; color: white; background-color: black;">
  <h1>IST 126 Database Photo Album</h1>
  <p>Modeled after W3Schools:https://www.w3schools.com/bootstrap4/bootstrap_templates.asp</p>
</div>

<div class="container" style="margin-top:10px;" >
  <div class="row">
    
    <div class="col-sm-12" style="background-color:#f76800; text-align:center;">
      <img id="mainImage" src="images/AdminBuilding.jpg" height="500">
    </div>
  </div>
</div>

<div class="container" style="margin-top:10px;" >

<?php
// Try to connect with the MySQL Server
$con = new mysqli('localhost','root','V1zoLpSMWmNtKq','images');
if ($con->connect_error)
 {
   die('Could not connect to mySQL: ' . $con->connect_error);
 }

$queryResults = $con->query("SELECT * FROM myImages");
if ($queryResults)
{
  $count = 0;
  while ($row = $queryResults->fetch_assoc())
  {
	if ($count%6 == 0)
		echo '<div class="row">';
	echo '<div class="col-sm-2" style="background-color:#f76800; text-align:center;">';
	echo '<img src="images/'.$row['ImageSRC'].'" height="100" onclick="document.getElementById(\'mainImage\').src = \'images/'.$row['ImageSRC'].'\'">';
	echo '<h4>'.$row['Description'].'</h4>';
	echo '</div>';
	if ($count%6 == 5)
		echo '</div>';
	$count++;
  }
  

}
else echo "NO RESULTS";
?>

</div>
</body>
</html>
