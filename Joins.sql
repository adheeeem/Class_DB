-- Joining start, end and subject name;
SELECT 
    schedule.s_start start,
    schedule.s_end end,
    subject.s_name
FROM
    schedule
INNER JOIN subject ON schedule.subject = subject.subject_id;

-- payment fully, from student, if available matching ones
SELECT
    payment.payment_id p_id,
    payment.date p_date,
    student.first_name s_fname,
    student.last_name s_lname
FROM
    payment
LEFT JOIN student ON student.student_id = payment.student;

-- student fully, from schedule, if available matching ones
SELECT 
    schedule.s_start start,
    schedule.s_end end,
    student.first_name fname,
    student.last_name lname
FROM
    schedule
RIGHT JOIN student ON schedule.student = student.student_id;

-- display full schedule list with detailed data
SELECT 
    schedule.s_start start,
    schedule.s_end end,
    subject.s_name,
    instructor.first_name ins_fname,
    instructor.last_name ins_lname,
    student.first_name stud_fname,
    student.last_name stud_lname
FROM schedule
    INNER JOIN student
    ON schedule.student = student.student_id
    INNER JOIN instructor
    ON schedule.instructor = instructor.instructor_id
    INNER JOIN subject
    ON schedule.subject = subject.subject_id;

