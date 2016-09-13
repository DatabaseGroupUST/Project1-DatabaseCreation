select distinct p.person_number from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier is not null;

select distinct p.person_number from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major = 'department'
and e.section_identifier is not null;

select first_name, last_name from person
where major = 'department';


select p.first_name, p.last_name from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier = 101;

select p.first_name, p.last_name from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier = 101
and e.grade is null;
}

--This is the sixth query
SELECT s.Section_identifier as SI, s.Course_number as CN, COUNT(e.Person_number) as PN_count
FROM section as s
LEFT JOIN enrollment as e on e.Section_identifier = s.Section_identifier                                     
GROUP BY s.Course_number, s.Department;

