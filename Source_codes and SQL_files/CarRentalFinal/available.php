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
	
$Cid=$_POST["cbid"];
$Sdate=$_POST["Sdate"];
$Ctype=$_POST["Ctype"];
$Rtype=$_POST["Rtype"];
$Nodays=$_POST["Days"];
$Noweeks=$_POST["Weeks"];
$Vehicle_id=$_POST["Vehicleid"];
?>

<?php
$res="select Rid, Vehicle_id from rental where Cid='$Cid' and Vehicle_id='$Vehicle_id'";
	$result=mysqli_query($connection,$res);
	if (mysqli_num_rows($result) != 0)
	{
		echo"<br><b>Car is already rented";
	}
	

?>
<?php

if($Vehicle_id!=null) {
	
	$res1="INSERT into rental(Cid,Vehicle_id,Ctype,Rtype,Sdate,Nodays,Noweeks) values('$Cid','$Vehicle_id','$Ctype','$Rtype','$Sdate','$Nodays','$Noweeks')";
	$result = mysqli_query($connection,$res1);

	error_reporting(E_ERROR | E_PARSE);
	if($result)
	{
		echo "<br><b>Rental Added!";
	}
	else
	{
		echo "<br><b>Rental Failed!";
	}
	
		

}
?>

<?php
$res2="SELECT Rid,Cid,Vehicle_id,Ctype,Rtype,Sdate,Nodays,Noweeks FROM rental";
	$result2=mysqli_query($connection,$res2);
	echo "<h1><center>Active & Scheduled Rentals</h1><br><br>";
?>
<center>
<table border='1'>
<tr>
<th>RID</th>
<th>Customer ID</th>
<th>Vehicle id</th>
<th>Car type</th>
<th>Rent type</th>
<th>Start Date</th>
<th>No of days</th>
<th>No of weeks</th>
</tr>
<?php
if (mysqli_num_rows($result2) > 0) {
while($row2 = mysqli_fetch_assoc($result2))
{
echo "<tr>";
echo "<td>" . $row2["Rid"] . "</td>";
echo "<td>" . $row2["Cid"] . "</td>";
echo "<td>" . $row2["Vehicle_id"] . "</td>";
echo "<td>" . $row2["Ctype"] . "</td>";
echo "<td>" . $row2["Rtype"] . "</td>";
echo "<td>" . $row2["Sdate"] . "</td>";
echo "<td>" . $row2["Nodays"] . "</td>";
echo "<td>" . $row2["Noweeks"] . "</td>";
echo "</tr>";
}
}
?>
</table>
</body>
</html>