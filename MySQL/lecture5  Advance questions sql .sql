/*
    QUUESTION NO 01 :- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

-- SOLUTION 
SELECT
    CASE
        WHEN A+B >C AND B+C>A AND C+A>B THEN
            CASE
                WHEN A=B AND B=C THEN 'Equilateral'
                WHEN A=B OR B=C OR C=A THEN 'Isosceles'
                ELSE 'Scalene'
            
            END
        ELSE 'Not A Triangle' 
        
    END
FROM TRIANGLES;    

/*
 Question 02  
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
*/

-- Solution

select concat(Name,"(" , substr(occupation,1,1),")") from occupations order by name;
select "There are a total of ", count(occupation), concat(lower(occupation),"s.") from occupations group by occupation order by count(occupation);

/*
    Question 03 
    Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id;

    
*/

-- Solution 
 
 Select name from employee where salary>2000 and months<10 order by employee_id;


 /*
    Question 4 
    You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.
    Students contains  id, name , marks. 
    Grades contans grade, min_mark, max_mark;

    Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.
 */

 -- Solution 

 select name,grade, marks from students join grades on students.marks>= grades.min_mark and students.marks <= grades.max_mark where grades.grade>=8 order by grades.grade desc, students.name asc;

select "NULL",grade, marks from students join grades on students.marks>= grades.min_mark and students.marks <= grades.max_mark where grades.grade<8 order by grades.grade desc, students.marks asc;

