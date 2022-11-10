# Learn relational databases by building a Mario database

A relational database organizes data into tables that are linked together through relationships.

In this 165-lesson course, you will learn the basics of a relational database by creating a PostgreSQL database filled with video game characters.

## My notes

Course starts with command `psql --username=freecodecamp --dbname=postgres` that starts the postgres shell. Type `\l` to list created databases and create new database with `CREATE DATABASE database_name`. I did not plan to write verbose readme even though i easily could. I will instead list learned commands and add few notes i found good to know. All of this is absolute basics but as organized and persistent learner i must take notes. 

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
DELETE FROM table_name WHERE condition;                     --delete record from table
DROP TABLE table_name;                                      --delete table from database
ALTER DATABASE database_name RENAME TO new_database_name;   --rename database
DROP DATABASE database_name;                                --delete database
UPDATE table_name SET column_name=new_value WHERE condition;  --change value in a column
SELECT columns_list FROM table_name ORDER BY expression ASC;  --order rows by expression in ASC or DESC order

```

### Datatypes

- One of common data types is `VARCHAR`, it's a short string of characters. You need to declare the maximum length `VARCHAR(30)`
- Datatype `SERIAL` will make your column an `INTEGER` with a `NOT NULL` constraint and automatically increment the integer when a new row is added.

#tags: postgresql, basic commands, create, alter, insert, select, drop, delete from, update, order by,