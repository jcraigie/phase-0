#1
SELECT * FROM states;

#2
SELECT * FROM regions;

#3
SELECT state_name, population FROM states;

#4
SELECT state_name, population FROM states ORDER BY population DESC;   

#5
SELECT state_name FROM states WHERE region_id = 7

#6
SELECT state_name, population_density FROM states WHERE population_density > 50 
ORDER BY population_density ASC; 

#7
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

#8
SELECT state_name, region_id FROM states ORDER BY region_id ASC;

#9
SELECT region_name FROM regions WHERE region_name LIKE '%central%';

#10
SELECT regions.region_name, states.state_name FROM regions INNER JOIN states 
ON regions.id=states.region_id ORDER BY states.region_id ASC;

What are databases for?
-Databases are for storing multiple pieces of information that are related to each 
other in such a way that they can be accessed easily and in multiple ways.

What is a one-to-many relationship?
- A one to many relationship is a relationship where a row of information in one table 
is referenced by many rows in another table.

What is a primary key? What is a foreign key? How can you determine which is which?
- A primary key is a key which is a unique identifier for each entry. 
A foreign key is a columwn which references a key in another table.
The two can be told a apart by whether or not the key refers to another table for its 
unique identifier.

How can you select information out of a SQL database? What are some general guidelines 
for that?
-By SELECTING what information, i.e. which columns you would like to reference, then 
specifying which file to get he info FROM and then applying any applicable constraints
or mofiers such as ORDER BY to get the info to display in an ascending or descending fashion.
