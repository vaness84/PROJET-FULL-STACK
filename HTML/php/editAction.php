<?php
// Include the database connection file
require_once("connection.php");

if (isset($_POST['update'])){
	// Escape special characters in a string for use in an SQL statement
	$id = mysqli_real_escape_string($mysqli, $_POST['id']);
	$name = mysqli_real_escape_string($mysqli, $_POST['noms']);
	$age = mysqli_real_escape_string($mysqli, $_POST['regions']);

}
	// Check for empty fields
	if (empty($noms) || empty($regions) || empty($id)) {
		
		
		if (empty($noms)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if (empty($regions)) {
			echo "<font color='red'>Area  field is empty.</font><br/>";
		}
	} else {
		// Update the database table
		$result = mysqli_query($mysqli, "UPDATE users SET `name` = '$noms', `age` = '$regions', WHERE `id` = $id");
		
		// Display success message
		echo "<p><font color='green'>Data updated successfully!</p>";
		echo "<a href='index.php'>View Result</a>";
	}