CREATE TABLE IF NOT EXISTS Student (
    student_id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(50) NOT NULL CHECK (gender in ('Male', 'Female')),
    phone VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Instructor (
    instructor_id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(50) NOT NULL CHECK (gender in ('Male', 'Female')),
    phone VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Subject (
    subject_id BIGSERIAL NOT NULL PRIMARY KEY,
    s_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Payment (
    payment_id BIGSERIAL NOT NULL PRIMARY KEY,
    student INT REFERENCES Student (student_id),
    date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Schedule (
    schedule_id BIGSERIAL NOT NULL PRIMARY KEY,
    s_start TIMESTAMP NOT NULL,
    s_end TIMESTAMP NOT NULL,
    subject INT REFERENCES Subject (subject_id),
    instructor INT REFERENCES Instructor (instructor_id),
    student INT REFERENCES Student (student_id)
);