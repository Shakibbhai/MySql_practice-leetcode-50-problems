# Write your MySQL query statement below
Select s.student_id,s.student_name,sub.subject_name,count(e.subject_name) as attended_exams from Students s cross join Subjects sub left join Examinations e on s.student_id=e.student_id and sub.subject_name=e.subject_name group by 1,2,3 order by 1,3;

/*
    s.student_id, 
    s.student_name, 
    sub.subject_name, 
    COUNT(e.subject_name) AS attended_exams
FROM 
    Students s
CROSS JOIN 
    Subjects sub
LEFT JOIN 
    Examinations e 
    ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, s.student_name, sub.subject_name
ORDER BY 
    s.student_id, sub.subject_name;

select s.student_id, s.student_name, sub.subject_name , count(e.student_id) as attended_exams 
from students s
cross join subjects sub
left join examinations e ON s.student_id = e.student_id and sub.subject_name = e.subject_name
group by 1,2,3
order by 1,3

*/
