 CREATE TABLE artists
(
id INTEGER IDENTITY(1,1),
 name TEXT NOT NULL,
 PRIMARY KEY(id)
);

INSERT INTO artists(name)
VALUES
('Li Yin'),
('Qian Weicheng'),
('Unidentified artist'),
('Zhou Chen');