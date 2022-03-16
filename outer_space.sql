-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moons INT NOT NULL,
  FOREIGN KEY (moons) REFERENCES Moons (id) ON DELETE CASCADE
);

CREATE TABLE Moons (
  id SERIAL PRIMARY KEY,
  name TEXT
);

  INSERT INTO Moons (name) VALUES ('The Moon');
  INSERT INTO Moons (name) VALUES ('Phobis');
  INSERT INTO Moons (name) VALUES ('Demios');
  INSERT INTO Moons (name) VALUES ('Naiad');
  INSERT INTO Moons (name) VALUES ('Thalassa');
  INSERT INTO Moons (name) VALUES ('Despina');
  INSERT INTO Moons (name) VALUES ('Galatea');
  INSERT INTO Moons (name) VALUES ('Larissa');
  INSERT INTO Moons (name) VALUES ('S/2004 N 1');
  INSERT INTO Moons (name) VALUES ('Proteus');
  INSERT INTO Moons (name) VALUES ('Triton');
  INSERT INTO Moons (name) VALUES ('Nereid');
  INSERT INTO Moons (name) VALUES ('Halimede');
  INSERT INTO Moons (name) VALUES ('Sao');
  INSERT INTO Moons (name) VALUES ('Laomedeia');
  INSERT INTO Moons (name) VALUES ('Psamathe');
  INSERT INTO Moons (name) VALUES ('Neso');

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', "The Moon"),
  ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');

