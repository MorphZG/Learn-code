#! /bin/bash
# Script to insert data from courses.csv and students.csv into students database

# variable to querry db from the script
# -c flag to run single command and exit
# read man pages for other options
PSQL="psql -X --username=freecodecamp --dbname=students --no-align -tuples-only -c"

cat courses.csv | while IFS="," read MAJOR COURSE  # IFS=internal field separator, read

do

# get major_id

# if not found

# insert major

# get new major_id

# get course_id

# if not found

# insert course

# get new course_id

# insert into majors_courses

done


#tags: while read,