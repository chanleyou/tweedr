DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tweeds;
DROP TABLE IF EXISTS follows;

CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	name TEXT,
	password TEXT
);

CREATE TABLE IF NOT EXISTS tweeds (
	id SERIAL PRIMARY KEY,
	content TEXT,
	user_id INTEGER,
	created_at TIMESTAMPTZ DEFAULT now ()
);

CREATE TABLE IF NOT EXISTS follows (
	id SERIAL PRIMARY KEY,
	user_id INTEGER,
	follower_id INTEGER
);
