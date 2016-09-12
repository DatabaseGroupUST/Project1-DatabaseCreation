{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh9000\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs28 \cf0 \cb2 1. select distinct p.person_number from person p\
inner join enrollment e\
	on p.person_number = e.student_number\
where 1=1\
and p.major not in ('department')\
and e.section_identifier is not null;\
\
2. select distinct p.person_number from person p\
inner join enrollment e\
	on p.person_number = e.student_number\
where 1=1\
and p.major = 'department'\
and e.section_identifier is not null;\
\
\
3. select first_name, last_name from person\
where major = 'department';\
\
\
4. select p.first_name, p.last_name from person p\
inner join enrollment e\
	on p.person_number = e.student_number\
where 1=1\
and p.major not in ('department')\
and e.section_identifier = 101;\
\
5. select p.first_name, p.last_name from person p\
inner join enrollment e\
	on p.person_number = e.student_number\
where 1=1\
and p.major not in ('department')\
and e.section_identifier = 101\
and e.grade is null;\
}