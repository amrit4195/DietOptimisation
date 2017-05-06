re_once '../../includes/db/db_connect.php'; // this is the file that contains link to database such as username, password, etc. Instead of including the whole db details everytime, I've made a separate file with db details and just add this line to reference that specific file 
	
	$sql  = "SELECT * FROM `field_devices`";
	$sql .= " WHERE field_devices.DeviceID = '" . $_REQUEST['ID'] . "';"; //sql query to select from stored db. WHERE clause should be changed accordingly
	$res = mysql_query($sql); // grabs the query

	$html = "<table border=\"1\" cellpadding=\"20px\" width=\"100%\">"; //create table
	
	if(mysql_num_rows($res) == 0) {
		$html .= "<tr><td>Error: Could not get field devices</td></tr>";		 // displays message in table column if no rows are returned	
	} else {
		$row = mysql_fetch_array($res); // builds rows from sql
	}
		$html .= "<tr style=\"background-color: #f2f2f2;\"><td><b>Serial No: :</b></td><td>" . $row['SerialNo'] . "</td></tr>";  //set tr and td accordingly. $row['SerialNo']; Here 'SerialNo is the column name stored in db
		$html .= "<tr style=\"background-color: #ffffff;\"><td><b>IMEI Number:</b></td><td>". $row['IMEI'] . "</td></tr>";
		$html .= "<tr style=\"background-color: #f2f2f2;\"><td><b>SIM Card No:</b></td><td>". $row['SimCardNo'] . "</td></tr>";		
        $html .= "<tr style=\"background-color: #ffffff;\"><td><b>Unit ID:</b></td><td>" . $row['UnitID'] . "</td></tr>";
        $html .= "<tr style=\"background-color: #f2f2f2;\"><td><b>Notes:</b></td><td>" . $row['Notes'] . "</td></tr>";
	 
	$html .= "</table>"; // close table
	echo($html);	 // output the html table 
?>
<!-- 1. In this sample, 'SerialNo', 'IMEI', 'SimCardNo', etc outputs the rows of specific 'ID' (WHERE clasue).
We could write WHERE UserID = '" . $_REQUEST['ID'] . "' and grab the details accordingly such as $row['vegetable'] for that specific user and so on 
2. instead of require_once '../../includes/db/db_connect.php';, 
we could add db details such as that username: ________
password: _______ and so on 
-->
