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
	$res="SELECT * FROM car2.customer";
	$result=mysqli_query($connection,$res);
	echo "<h1><center>Customers</h1><br><br>";
?>
<center>
<table border='1'>
<tr>
<th>FName</th>
<th>Lname</th>
<th>Mobile</th>
<th>Dl No.</th>
<th>Insurance No.</th>
</tr>
<?php
if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result))
{
echo "<tr>";
echo "<td>" . $row["fname"] . "</td>";
echo "<td>" . $row["lname"] . "</td>";
echo "<td>" . $row["mobile"] . "</td>";
echo "<td>" . $row["dlno"] . "</td>";
echo "<td>" . $row["ino"] . "</td>";
echo "</tr>";
}
}
?>
</table>
</body>
</html>


