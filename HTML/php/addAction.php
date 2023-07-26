<html>
<head>
	<title>Add Data</title>
</head>

<body>
<?php
// Include the database connection file
require_once("connection.php");

if (isset($_POST['submit'])) {
    //language construct can be used to detect if a variable has been already initialized  //
	// Escape special characters in string for use in SQL statement	
	$name = mysqli_real_escape_string($mysqli, $_POST['noms']);
	$age = mysqli_real_escape_string($mysqli, $_POST['regions']);
	
		
	// Check for empty fields
	if (empty($noms) || empty($regions) ){
		if (empty($noms)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
	
		if (empty($regions)) {
			echo "<font color='red'>Area field is empty.</font><br/>";
		}
		
		
	}
	
		// Show link to the previous page
		echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
	} else { 
		// If all the fields are filled (not empty) 

		// Insert data into database
		$result = mysqli_query($mysqli, "INSERT INTO users (`noms`, `regions`,) VALUES ('$noms', '$regions',)");
		
		// Display success message
		echo "<p><font color='green'>Data added successfully!</p>";
		echo "<a href='index.php'>View Result</a>";
	}

?>
</body>
</html>