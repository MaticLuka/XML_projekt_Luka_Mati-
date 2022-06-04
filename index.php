<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
     <form action="index.php" method="post">
     	<h2>LOGIN</h2>
     	
     	<label>Korisničko ime</label>
     	<input type="text" name="username" placeholder="Korisničko ime"><br>

     	<label>Lozinka</label>
     	<input type="password" name="password" placeholder="Lozinka"><br>

     	<button type="submit" name="submit">Login</button>
     </form>
</body>
</html>

<?php if (isset($_POST['submit'])) {
        $un=$_POST['username'];
        $pw=$_POST['password'];
     	
        if ($un=='username' && $pw=='password'){
            header("location:main.html");
            exit();
        }
        else
            echo "Pogrešno Korisničko ime/Lozinka";
    } 
?>