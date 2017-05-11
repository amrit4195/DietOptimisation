
# Database Read/Write in OPL

SOURCE: https://www-01.ibm.com/support/docview.wss?uid=swg27039535&aid=1
SOURCE: https://www-01.ibm.com/support/docview.wss?uid=swg21569279

#### Initiating Connection 

DBConnection db("oracle12","username/password@SSID")

// SSID is Deakin's DB Instance 

#### Reading from DB 

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

opt from DBRead(db,"SELECT opt FROM food")

#### Writing to DB  

DBExecute(db,"create table Result(food varchar(10), quantity
varchar(10)));

Food to DBUpdate(db, "INSERT INTO Result(food) VALUES ?");

Result to DBUpdate(db,"INSERT INTO Result(quantity)
VALUES ?);


#### SQL 

```sql
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

```

#### OPL Part continued 

// On Linux Machine 

```bash
unsetopt prompt_cr prompt_sp

oplrun -v MODEL.mod SAMPLE-DATA.dat | grep -A 2 yAmount | cut -d "[" -f2 | cut -d "]" -f1 | tr -d "\n" | tr -s "[[:space:]]" " " > optresult.txt
```


#### AWS DB Instance

```bash
sqlplus 'dietopteam@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=oracle-dietop1.cotfgzkq3gdm.us-west-2.rds.amazonaws.com)(PORT=1521))(CONNECT_DATA=(SID=ORCL)))'
```

#### Initialising SQL Tables 

```sql
CREATE TABLE users (
id NUMBER(10) NOT NULL,
name VARCHAR2(100) NOT NULL,
age NUMBER(10) NOT NULL,
weight NUMBER(10) NOT NULL,
height NUMBER(10) NOT NULL,
F1 VARCHAR2(100) NOT NULL,
F2 VARCHAR2(100) NOT NULL,
F3 VARCHAR2(100) NOT NULL,
F4 VARCHAR2(100) NOT NULL,
F5 VARCHAR2(100) NOT NULL,
F6 VARCHAR2(100) NOT NULL,
F7 VARCHAR2(100) NOT NULL,
F8 VARCHAR2(100) NOT NULL,
F9 VARCHAR2(100) NOT NULL,
opt VARCHAR2(100) NOT NULL
)

CREATE TABLE food (
id NUMBER(10) NOT NULL,
foodname VARCHAR2(100) NOT NULL,
cost FLOAT(3) NOT NULL,
protein FLOAT(3) NOT NULL,
fibre FLOAT(3) NOT NULL,
omega FLOAT(3) NOT NULL,
satfat FLOAT(3) NOT NULL
)
```











