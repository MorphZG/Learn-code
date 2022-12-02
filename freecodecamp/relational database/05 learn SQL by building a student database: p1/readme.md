# Build a Student Database: Part 1

In this 140-lesson course, you will create a Bash script that uses SQL to enter information about your computer science students into PostgreSQL.

## My notes

`pg_dump -cC --inserts -U freecodecamp students > students.sql`

After creating the students database and filling in the required columns i inserted the first row of data. Since it would be tedious to enter all the details manually i had to write the bash script instead. `insert_data.sh` will do the hard work. Start with simple `cat courses.csv` and pipe it to `while` loop. There are different tables and different columns it should fill out so it will be helpful to plan and organize the script with todo comments and notes. I will declare the `$PSQL` variable so i can easily query the database from the script. Variable will hold the command together with options (flags) to login in and connect to the database, run the query and disconnect back to bash shell. This is how it looks:

```bash
# -c flag in the end will run the query and disconnect back to default shell
PSQL="psql -X --username=freecodecamp --dbname=students --no-align -tuples-only -c"

# query the database with the variable
$($PSQL "<query_here>")
```




#tags: bash script, sql,