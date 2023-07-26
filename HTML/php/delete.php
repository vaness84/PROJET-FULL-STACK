<?php
// Include the database connection file
require_once("connection.php");

// Get id parameter value from URL
$nom = $_GET['nom'];

// Delete row from the database table
$result = mysqli_query($mysqli, "DELETE FROM oiseaux WHERE nom = $nom");

// Redirect to the main display page (index.php in our case)
header("Location:../index.php");