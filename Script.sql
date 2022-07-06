CREATE TABLE IF NOT EXISTS genere (
	id SERIAL PRIMARY KEY,
	genere_music VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS executor (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) UNIQUE NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_album (
	id INTEGER PRIMARY KEY,
	executor_id INTEGER NOT NULL REFERENCES executor(id),
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS executor_genere (
	id INTEGER PRIMARY KEY,
	genere_id integer not null references genere(id),
	executor_id INTEGER NOT NULL REFERENCES executor(id)
);

CREATE TABLE IF NOT EXISTS track (
	id serial primary key,
	song_title VARCHAR(80),
	duration TIME NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id)
);
	
CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY ,
	name VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection (
	id INTEGER PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES track(id),
	collection_id INTEGER NOT NULL REFERENCES collection(id)
);
