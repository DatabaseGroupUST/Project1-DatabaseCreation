select distinct p.person_number from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier is not null;

<<<<<<< HEAD
=======


>>>>>>> 93b1b1a8ee13d7369eb4328ce5fefc734c9e5628
select distinct p.person_number from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major = 'department'
and e.section_identifier is not null;

<<<<<<< HEAD
=======


>>>>>>> 93b1b1a8ee13d7369eb4328ce5fefc734c9e5628
select first_name, last_name from person
where major = 'department';


<<<<<<< HEAD
=======

>>>>>>> 93b1b1a8ee13d7369eb4328ce5fefc734c9e5628
select p.first_name, p.last_name from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier = 101;

<<<<<<< HEAD
=======


>>>>>>> 93b1b1a8ee13d7369eb4328ce5fefc734c9e5628
select p.first_name, p.last_name from person p
inner join enrollment e
	on p.person_number = e.student_number
where 1=1
and p.major not in ('department')
and e.section_identifier = 101
and e.grade is null;
}
