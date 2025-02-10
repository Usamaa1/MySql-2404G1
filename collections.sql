 CREATE TABLE collections (
	id INTEGER IDENTITY(1,1),
	title TEXT NOT NULL,
	accession_number DECIMAL NOT NULL UNIQUE,
	acquired DATE,
	PRIMARY KEY(id)
 ); INSERT INTO collections (title, accession_number, acquired)
 VALUES
 ('Profusion of flowers', 56.257, '1956-04-12'),
 ('Farmers working at dawn', 11.6152, '1911-08-03'),
 ('Spring outing', 14.76, '1914-01-08'),
 ('Imaginative landscape', 57.496, NULL),
 ('Peonies and butterfly', 06.1899, '1906-01-01'),
 ('Tile Lunette', 07.2437, '1907-11-08'),
 ('Statuette of a shrew', 01.105, '1901-02-11');