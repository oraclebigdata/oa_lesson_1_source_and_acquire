CREATE EXTERNAL TABLE flume_example (record string)
ROW FORMAT DELIMITED
LINES TERMINATED BY '\n'
LOCATION '/user/oracle/flume_example';


SELECT xpath_int(record, "/record/PurchaseDate"), xpath_string(record, "/record/FlightsAvailable") FROM flume_example;

CREATE TABLE flight_arrays AS SELECT xpath_string(record, "/record/Customer") as customer, xpath_int(record, "/record/PurchaseDate") as purchase_date,
 split(xpath_string(record, "/record/FlightsAvailable"), ",") as available_flights FROM flume_example;


SELECT FROM_UNIXTIME(purchase_date), flight_no, COUNT(flight_no) FROM flight_arrays
LATERAL VIEW explode(available_flights) flight_table as flight_no GROUP BY FROM_UNIXTIME(purchase_date), flight_no;
