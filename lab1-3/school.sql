PRAGMA foreign_keys = ON;

CREATE TABLE teachers (
	teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE subjects (
	subject_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE groups (
	group_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE students (
	student_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	group_id INTEGER,
	FOREIGN KEY (group_id) REFERENCES groups(group_id)
);

CREATE TABLE schedule (
	schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
	group_id INTEGER,
	subject_id INTEGER,
	teacher_id INTEGER,
	schedule_date DATE,
	FOREIGN KEY (group_id) REFERENCES groups(group_id),
	FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
	FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE grades (
	student_id INTEGER,
	subject_id INTEGER,
	grade INTEGER,
	date DATE,
	PRIMARY KEY (student_id, subject_id),
	FOREIGN KEY (student_id) REFERENCES students(student_id),
	FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE parents (
	parent_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE studentparents (
	student_id INTEGER,
	parent_id INTEGER,
	PRIMARY KEY (student_id, parent_id),
	FOREIGN KEY (student_id) REFERENCES students(student_id),
	FOREIGN KEY (parent_id) REFERENCES parents(parent_id)
);

CREATE TABLE attendance (
	student_id INTEGER,
	date DATE,
	status TEXT,
	PRIMARY KEY (student_id, date),
	FOREIGN KEY (student_id) REFERENCES students(student_id)
);
