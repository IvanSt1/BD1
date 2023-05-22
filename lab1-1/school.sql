CREATE TABLE teachers (
	teacher_id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE subjects (
	subject_id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE groups (
	group_id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE students (
	student_id integer PRIMARY KEY AUTOINCREMENT,
	name text,
	group_id integer
);

CREATE TABLE schedule (
	schedule_id integer PRIMARY KEY AUTOINCREMENT,
	group_id integer,
	subject_id integer,
	teacher_id integer,
	schedule_date date
);

CREATE TABLE grades (
	student_id integer PRIMARY KEY AUTOINCREMENT,
	subject_id integer,
	grade integer,
	date date
);

CREATE TABLE parents (
	parent_id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE studentparents (
	student_id integer PRIMARY KEY AUTOINCREMENT,
	parent_id integer
);

CREATE TABLE attendance (
	student_id integer PRIMARY KEY AUTOINCREMENT,
	date date,
	status text
);










