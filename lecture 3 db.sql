DELETE FROM collections WHERE title = 'spring outing';

SELECT * FROM collections;

DROP TABLE artists;

CREATE TABLE artists
(
	id INTEGER PRIMARY KEY auto_increment,
	name VARCHAR(200)
);


CREATE TABLE collections
(
	id INTEGER PRIMARY KEY auto_increment,
	title VARCHAR(200)
);

CREATE TABLE created
(
	artist_id INTEGER,
	collection_id INTEGER,
	FOREIGN KEY(artist_id) REFERENCES artists(id) ON DELETE CASCADE,
	FOREIGN KEY(collection_id) REFERENCES collections(id) ON DELETE CASCADE
);

INSERT INTO artists(name)
VALUES
('Li Yin'),
('Qian Weicheng'),
('Unidentified artist'),
('Zhou Chen');

 INSERT INTO collections (title)
 VALUES
 ('Profusion of flowers'),
 ('Farmers working at dawn'),
 ('Spring outing'),
 ('Imaginative landscape'),
 ('Peonies and butterfly'),
 ('Tile Lunette'),
 ('Statuette of a shrew');


 INSERT INTO created(artist_id,collection_id)
VALUES
(2,3),
(3,1),
(1,2),
(4,4);






DELETE FROM artists WHERE name = 'LI YIN';

SELECT * FROM artists;
SELECT * FROM collections;
SELECT * FROM created;
