-- 1. List all classrooms with a capacity greater than 50.
select * from classroom where capacity > 50;


-- 2. Find the names of all instructors in the "Computer Science" department.
select * from instructor where dept_name = 'Computer';


-- 3. Retrieve the titles of all courses offered in the "Spring" semester of 2023.
select c.title from section s join course c on c.course_id = s.course_id where semester='Fall' and year=2020;


-- 4. List all students who have taken more than 80 total credits.
select * from student where tot_cred > 80;


-- 5. Find the names of all departments with a budget greater than ₹2,000,000.
select dept_name from department where budget > 2000000;


-- 6. List all departments and their respective buildings.
select dept_name, building from department;


-- 7. Find the names of all students enrolled in the "Chemical" department.
select name from student where dept_name = 'Chemical';


-- 8. Retrieve the titles of all courses with 3 credits.
select title from course where credits=4;


-- 9. List all instructors who do not belong to any department.
select * from instructor where dept_name is null;


-- 10. Find the total number of classrooms in each building.
select building, count(room_number) count from classroom group by building;


-- 11. List all courses taught by the instructor with ID "INS02".
select id inst_id, title from course c join teaches t  on c.course_id = t.course_id where t.id = 'INS02';


-- 12. Find the total number of students enrolled in each department.
select dept_name, count(name) count from student group by dept_name;


-- 13. Retrieve the names of students who have taken the course "CS-101" and received an "A" grade.
select s.name from takes t join student s on t.id = s.id where t.course_id = 'MA01' and grade='AB';


-- 14. List all instructors who earn a salary greater than ₹50,000.
select * from instructor where salary > 50000;


-- 15. Find the average salary of instructors in each department.
select dept_name, avg(salary) avg from instructor where dept_name is not null group by dept_name;


-- 16. Retrieve the names of students who have not been assigned an advisor.
select s.name from student s left join advisor a on s.id=a.s_id where a.i_id is null;


-- 17. List all courses that have "CS01" as a prerequisite.
select c.course_id id, c.title from course c join prereq p on c.course_id = p.course_id where p.prereq_id='CS01';


-- 18. Find the total number of sections taught in each building.
select building, count(sec_id) count from section group by building;


-- 19. Retrieve the names of students who have taken at least one course in the "Fall" semester of 2022.
select s.id, s.name from student s join takes t on s.id = t.id where semester='Fall' and year=2020;


-- 20. List all classrooms that have not been assigned to any section.
select c.building, c.room_number from classroom c left join section s on c.room_number = s.room_number where s.room_number is null;


-- 21. List all courses offered by the "Mathematics" department.
select title, dept_name from course where dept_name='MACS';


-- 22. Find the names of students who have taken courses in both "Fall" and "Spring" semesters.
select s.id, s.name, t1.course_id , t2.course_id from 
takes t1 join takes t2 on t1.id = t2.id 
join student s on s.id = t1.id 
where t1.semester='Fall' and t2.semester ='Spring';

-- 23. Retrieve the names of instructors who have taught more than 5 sections.
select * from (select i.name, count(t.sec_id) count from teaches t join instructor i on t.id = i.id group by i.name) where count > 1;

-- 24. List all courses that have no prerequisites.

-- 25. Find the average number of credits taken by students in each department.

-- 26. Retrieve the names of students who have taken courses with the instructor "Einstein".

-- 27. List all sections that are held in the "Watson" building.

-- 28. Find the total budget allocated to all departments.

-- 29. Retrieve the names of students who have taken at least one course with a grade of "B".

-- 30. List all instructors who have not taught any courses.

-- 31. Find the names of students who have taken all courses offered by the "Computer Science" department.

-- 32. Retrieve the names of instructors who have taught every course in their department.

-- 33. List all students who have taken at least one course with every instructor in their department.

-- 34. Find the courses that have the highest number of prerequisites.

-- 35. Retrieve the names of students who have taken the same course more than once.

-- 36. List all instructors who have taught in every semester (Fall, Winter, Spring, Summer) in the year 2023.

-- 37. Find the departments where the average instructor salary is greater than the overall average salary.
