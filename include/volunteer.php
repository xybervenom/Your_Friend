<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://use.fontawesome.com/0d1cdb6f90.js"></script>
	<style type="text/css">
		*{
			text-align: center;
			background: lightblue;
		}
		header{
			position: fixed;
			display: block;
			font-size: 3em;
		}
		main{
			height: 500px;
			overflow-y: scroll;
		}
		main div{
			background: black;
			color: white;
			width: 50%;
			padding: 1%;
			font-size: 1.5em;
			display: inline-block;
			border-radius: 10px;
		}
		form{
			position: fixed;
			display: flex;
			bottom: 4px;
		}
		form textarea{
			width: 90vw;
			resize: none;
			height: 100px;
			text-align: left;
			font-size: 1.5em;
			font-family: serif;
			background: white;
		}
		form input[type="submit"]{
			width: 7vw;
			height: 105px;
			margin-left: 1%;
			background: lightgreen;
			font-size: 1.5em;
			padding: 1%;
		}
		span{
			color: grey;
			font-size: .75em;
			background: black;
		}
	</style>
</head>
<body>
	<header>
		<a href="../index.php"><i class="fa fa-home"></i></a>
	</header>
	<main>
	<?php 
		include 'connection.php';

		$sql1 = "SELECT * FROM messages ORDER BY ID DESC";
		$result1 = $db->query($sql1);
		if ($result1 -> num_rows > 0){
			while ($row = $result1 -> fetch_assoc()){
				echo "<div>{$row['message']}";
				echo "<br><span>{$row['logs']}</span></div>";
				echo "<br><br>";
			}
		}
		else{
			echo "<script>alert('No chats yet..')</script>";
		}
	?>
	</main>
	<form action="post-msg-vol.php" method="post">
		<textarea name="message" placeholder="Type your message here"></textarea>
		<input type="submit" value="Send">
	</form>
</body>
</html>