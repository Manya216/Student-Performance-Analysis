select*from marks;
select*from subjects;
select*from student;
select s.Student_id,s.Name,sub.Subject_name,m.Marks from marks m join  student s on m.Student_id=s.Student_id 
join subjects sub on sub.Subject_id=m.Subject_id;
select s.Student_id,s.Name,ROUND(sum(m.Marks),2) AS TOTAL_MARKS from marks m join student s on m.Student_id=s.Student_id group by s.Student_id;
select s.Student_id,s.Name,ROUND(avg(m.Marks),2) AS AVG_MARKS from marks m join student s on m.Student_id=s.Student_id group by s.Student_id;
select sub.Subject_id,sub.Subject_name,ROUND(avg(m.Marks),2) AS AVG_OF_EACH_SUBJECT from marks m join subjects sub on m.Subject_id=sub.Subject_id group by sub.Subject_id;
select sub.Subject_id,sub.Subject_name,ROUND(avg(m.Marks),2) AS HIGHEST_SCORING_SUBJECT from marks m join subjects sub on m.Subject_id=sub.Subject_id group by sub.Subject_id order by HIGHEST_SCORING_SUBJECT desc LIMIT 1;
select s.Student_id,s.Name,ROUND(sum(m.Marks),2) AS TOTAL_MARKS, dense_rank() over (order by sum(m.Marks) desc ) as class_position from marks m join student s on m.Student_id=s.Student_id group by s.Student_id;
select sub.Subject_id,sub.Subject_name,ROUND(avg(m.Marks),2) AS AVG_OF_EACH_SUBJECT, dense_rank() over(order by avg(m.Marks)) as Difficulty_level from marks m join subjects sub on m.Subject_id=sub.Subject_id group by sub.Subject_id;
select*from(select s.Student_id,s.Name,ROUND(sum(m.Marks),2) AS TOTAL_MARKS, dense_rank() over (order by sum(m.Marks) desc ) as star_performers from marks m  join student s on m.Student_id=s.Student_id group by s.Student_id)t where class_position<=3;
select s.Student_id,s.Name,ROUND(avg(m.Marks),2) AS AVG_MARKS,
CASE 
    WHEN AVG(m.Marks)>=55 then 'PASS' 
    ELSE 'FAIL'
    END AS RESULT
    from marks m join student s on m.Student_id=s.Student_id group by s.Student_id;

