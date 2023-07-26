<?php
// Include the database connection file
require_once("connection.php");
// Get id parameter value from URL
$id = $_GET['nom'];
echo $id;

//var dump :function displays structured informations about one or more expressions -includes its types or values//

var_dump($id);

 //Edit  row from the database table//
$result = mysqli_query($mysqli, "Update FROM users WHERE id = $id");


// Redirect to the main display page (index.php in our case)//
header("Location:index.php");