CREATE TABLE IF NOT EXISTS department (
	id SERIAL PRIMARY key,
	title VARCHAR(80) UNIQUE NOT null
);	

CREATE TABLE IF NOT EXISTS employee (
	id INTEGER PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES department(id),
	chief_id INTEGER NOT NULL REFERENCES employee(id)
);
