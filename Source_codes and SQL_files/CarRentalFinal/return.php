<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<?php
	$database_host = "localhost";
	$database_user = "root";
	$database_pass = "";
	$database_name = "car2";
	$connection = mysqli_connect($database_host, $database_user, $database_pass, $database_name);
	if(mysqli_connect_errno()){
		die("Failed connecting to MySQL database. Invalid credentials" . mysqli_connect_error(). "(" .mysqli_connect_errno(). ")" ); }
	$Rid=$_POST["rid"];
	error_reporting(E_ERROR | E_PARSE);

	$res="SELECT * from rental where Rid='$Rid'";
	$result=mysqli_query($connection,$res);
	$row = mysqli_fetch_assoc($result);
	$Ctype = $row["Ctype"];
	
	$Vehicle_id = $row["Vehicle_id"];

	$res1="SELECT * from rates where Ctype='$Ctype'";
	$result1=mysqli_query($connection,$res1);
	$row1 = mysqli_fetch_assoc($result1);

	$Drate = $row1["Drate"];
	$Wrate = $row1["Wrate"];

	$Amountdue = (($row["Noweeks"] * $Wrate) + ($row["Nodays"] * $Drate));
	echo "<h1> <br> Amount due is: $ $Amountdue</h1>";


	
	$res2="INSERT into bill(Rid,Vehicle_id,Amount) values('$Rid','$Vehicle_id','$Amountdue')";
	$result2=mysqli_query($connection,$res2);
	$row2 = mysqli_fetch_assoc($result2);
	if($result2)
	{
		echo "<br><b>Entered in the database";
		$res3="DELETE from rental WHERE Rid = '$Rid'";
		$result3=mysqli_query($connection,$res3);
		echo "<br>Entry removed from Rental";
	}
	else
	{
		echo "<br><b>Data cannot be entered";
	}
	



	

?>
</body>
</html>