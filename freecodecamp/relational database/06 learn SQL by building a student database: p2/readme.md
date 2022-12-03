# Build a Student Database: Part 2

SQL join commands are used to combine information from multiple tables in a relational database. In this 140-lesson course, you will complete your student database while diving deeper into SQL commands.

## My notes

Learning about different ways to filter out the data. Will write a script that will query the `students.sql` database and print the students depending on different input parameters. I have learned to combine different conditions to get the data i need. It is possible to match patterns, like view row where name starts with "Fre" or have "ode" somewhere in the middle. Still not sure is it powerful as regular expressions but it looks promising for sure. Characters like `_` will replace any single character while `%` replace any number of characters. It is also possible to sort the results of a query in ascending or descending order by using `ASC` or `DESC` at the end of a `ORDER BY column_name` statement.

```sql
-- condition OR multiple condition
SELECT * FROM table_name WHERE condition_1 AND (condition_2 OR condition_2);

-- regex pattern matching
SELECT * FROM table_name WHERE column_name LIKE 'pattern';  --exact match
SELECT * FROM table_name WHERE column_name NOT LIKE 'pattern';  --opposite of pattern
SELECT * FROM table_name WHERE column_name ILIKE 'pattern';  --ignore case
SELECT * FROM table_name WHERE column_name NOT ILIKE 'pattern';  --opposite, ignore case
SELECT * FROM table_name WHERE column_name LIKE 'pattern' AND column_name ILIKE 'pattern';  --combined

-- sort the result, ASC for ascending, DESC for descending order
SELECT * FROM students ORDER BY gpa DESC
```





#tags: bash script, sql, where, like pattern, regex