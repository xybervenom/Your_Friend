
<?php 
	session_start();
?>

<!DOCTYPE html>
<html>

	<head lang="en">
		<title>Mental Assistance</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<style type="text/css">
			body{
				text-align: center;
				display: flex;
				flex-direction: column;
				margin: 0;
				height: 100vh;
				justify-content: center;
				align-content: center;
			}
			form input{
				font-size: 1.5em;
				padding: 1%;
				border-radius: 10px;
			}

		</style>
	</head>

	<body>
		<form>
			<h1><a href="include/anonymous.php">Get mental support anonymously for free</a></h1>
		</form>

		<p>(OR)</p>

		<form action="include/login.php" method="post">
			<h1>Volunteer for our program</h1>
			<input type="text" name="username" placeholder="Username">
			<br><br>
			<input type="password" name="password" placeholder="password">
			<br><br>
			<input type="submit" name="submit">
		</form>
	</body>

</html>