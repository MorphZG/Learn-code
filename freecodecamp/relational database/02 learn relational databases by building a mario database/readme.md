# Learn relational databases by building a Mario database

A relational database organizes data into tables that are linked together through relationships.

In this 165-lesson course, you will learn the basics of a relational database by creating a PostgreSQL database filled with video game characters.

## My notes

Course starts with command `psql --username=freecodecamp --dbname=postgres` that starts the postgres shell. Type `\l` to list created databases and create new database with `CREATE DATABASE database_name`. I did not plan to write verbose readme even though i easily could. I will instead list important statements and add few notes i found good to know. All of this is absolute basics but as organized and persistent learner i must take notes. 

### Basic datatype

- One of common data types is `VARCHAR`, it's a short string of characters. You need to declare the maximum length `VARCHAR(30)`
- `SERIAL` datatype will make your column an `INTEGER` with a `NOT NULL` constraint and automatically increment the integer when a new row is added.
- `DATE` The postgresql supports the complete set of SQL date and times data types. They are used to represent date and time values. There are `TIMESTAMP`, `TIME`, `INTERVAL` and `DATE`
- `NUMERIC(precision, scale)` can store decimal numbers. Can store 131072 digits before decimal point and 16383 after decimal point. Precision defines total number of digits, scale defines a fraction part behind decimal point. 2356.78 have precision of 6 and scale of 2. When declaring `NUMERIC` datatype we can ignore scale or both precision and scale.

- You should set a primary key for every table.

### Basic statements and commands

```sql

\l                                                          --list available databases
\c database_name;                                           --connect to database
\d                                                          --display all tables
\d table_name;                                              --display table details
CREATE DATABASE database_name;                              --create new database
CREATE TABLE table_name();                                  --create new table
ALTER TABLE table_name ADD COLUMN column_name DATATYPE;     --add column
ALTER TABLE table_name DROP COLUMN column_name;             --remove column
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;   --rename column
INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);  --insert row into table
SELECT column_name FROM table_name;                         --view columns in a table, use * to show all columns
SELECT column_name FROM table_name WHERE condition;         --view columns in a table that match some condition eg. name='Mario'
DELETE FROM table_name WHERE condition;                     --delete record from table
DROP TABLE table_name;                                      --delete table from database
ALTER DATABASE database_name RENAME TO new_database_name;   --rename database
DROP DATABASE database_name;                                --delete database
UPDATE table_name SET column_name=new_value WHERE condition;  --change value in a column
SELECT columns_list FROM table_name ORDER BY expression ASC;  --sort rows by expression in ASC or DESC order
ALTER TABLE table_name ADD PRIMARY KEY(column_name);        --add primary key, column that will serve as unique identifier for each row
ALTER TABLE table_name DROP CONSTRAINT constraint_name;     --drop constraint, eg. remove primary key (type '\d table_name' for more details)
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);    --add 'foreign key' column to a table that will relate with column from another table.
ALTER TABLE table_name ADD UNIQUE(column_name);             --add 'UNIQUE' constraint to a column_name
ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;   --add 'NOT NULL' constraint to a column_name



```

#tags: postgresql, basic commands, create, alter, insert, select, drop, delete from, update, order-sort, constraint,