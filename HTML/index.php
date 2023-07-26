<?php

// Include the database connection file
require_once("php/connection.php");


// Fetch data in descending order (lastest entry first)
$result = mysqli_query($mysqli, "SELECT * FROM oiseaux ORDER BY nom DESC");
?>

<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>liste des oiseaux des hauts de france</title>
		<link rel="stylesheet" href="../css/style.css" />

		<script>

function changeColor(color){

	document.body.style.background
	=color;
}
		</script>
	</head>

	<body style="text-align:center;">
			<button>Les oiseaux des hauts de France</button>
			
			<p>cliquez sur le bouton pour changer la couleur du background</p>

			<button onclick ="changeColor ('pink')">rose</button>
			<button onclick ="changeColor ('green')">vert</button>
			<button onclick ="changeColor ('red')">rouge</button>
			<button onclick ="changeColor ('yellow')">jaune</button>
			
		<table width='80%' border=0>
			<tr bgcolor='#DDDDDD'>
				<td><strong>Name</strong></td>
				<td><strong>Region</strong></td>
				<td><strong>Action</strong></td>
			</tr>

			<img src="/Users/vanessaverhelst/Desktop/rouge-gorge-oiseau-101828.jpeg" alt="" srcset="">
			<?php
		// Fetch the next row of a result set as an associative array
			while ($res = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>".$res['nom']."</td>";
			echo "<td>".$res['régions']."</td>";
			
			
			echo "<td><a href=\"php/edit.php?nom=$res[nom]\">Edit</a> | 
			
			
			<a href=\"php/delete.php?nom=$res[nom]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";

		}

		

		?>	
		</table>
		
		<script src="./php/js/index.js"></script>

	</body>
</html>
