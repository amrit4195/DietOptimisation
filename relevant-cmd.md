
# Database Read/Write in OPL

SOURCE: https://www-01.ibm.com/support/docview.wss?uid=swg27039535&aid=1
SOURCE: https://www-01.ibm.com/support/docview.wss?uid=swg21569279

##### Initiating Connection 

DBConnection db("oracle12","username/password@SSID")

// SSID is Deakin's DB Instance 

##### Reading from DB 

food from DBRead(db,"SELECT
foodname FROM food");

cost from DBRead(db,"SELECT
cost FROM food");

fiber from DBRead(db,"SELECT
fiber FROM food");

protein from DBRead(db,"SELECT
protein FROM food");

omega from DBRead(db,"SELECT
omega FROM food");

satfat from DBRead(db,"SELECT
satfat FROM food");

##### Writing to DB  

// First create a result table in PHP for convenience. Then if the user choose to save his/her result we can add a statement to add into the main table. This is to prevent unecessary usage of space 

DBExecute(db,"create table Result(food varchar(10), quantity
varchar(10)));

Food to DBUpdate(db, "INSERT INTO Result(food) VALUES ?");

Result to DBUpdate(db,"INSERT INTO Result(quantity)
VALUES ?);


#### SQL 

$id = $_REQUEST['ID']
$foodselect = "SELECT F1, F2, F3, F4, F5, F6, F7, F8, F9 FROM user WHERE ID = '$id'"
$conn = oci_connect('uname', 'password', 'localhost');
if (!$conn) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$q = oci_parse($conn, $foodselect);

while ($row = oci_fetch_array($q)){
    $output[] = $row;
}

foreach($output as $item){
    
    $foodinsert = "INSERT INTO newtable (FoodID, Cost, Protein, Fibre, Omega, SatFat) SELECT FoodName, Cost, Protein, Fibre, Omega, SatFat FROM user WHERE FoodID = '$item'"
    $q = oci_parse($conn, $foodinsert);
    oci_execute($q)
}

exec(opl) // Execute OPL script 

#### OPL Part continued 













