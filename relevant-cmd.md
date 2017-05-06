
# Database Read/Write in OPL

SOURCE: http://www-01.ibm.com/support/docview.wss?uid=swg21444285

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

omega from DBRead(db,"SELECT
omega FROM food");

satfat from DBRead(db,"SELECT
satfat FROM food");

##### Writing to DB  

Result to DBUpdate(db,"INSERT INTO Result(oil,gas,blend,a)
VALUES(?,?,?,?)");


