CREATE TABLE teachers (
	teacher_id integer,
	name text
);

CREATE TABLE subjects (
	subject_id integer,
	name text
);

CREATE TABLE groups (
	group_id integer,
	name text
);

CREATE TABLE students (
	student_id integer,
	name text,
	group_id integer
);

CREATE TABLE schedule (
	schedule_id integer,
	group_id integer,
	subject_id integer,
	teacher_id integer,
	schedule_date date
);

CREATE TABLE grades (
	student_id integer,
	subject_id integer,
	grade integer,
	date date
);

CREATE TABLE parents (
	parent_id integer,
	name text
);

CREATE TABLE studentparents (
	student_id integer,
	parent_id integer
);

CREATE TABLE attendance (
	student_id integer,
	date date,
	status text
);










