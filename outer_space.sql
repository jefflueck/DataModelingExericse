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
  galaxy TEXT NOT NULL
);

CREATE TABLE Moons (
  id SERIAL PRIMARY KEY,
  name TEXT,
  planet_id INT,
  FOREIGN KEY (planet_id) REFERENCES planet (id) ON DELETE CASCADE
);

  INSERT INTO Moons (name, planet_id) VALUES ('The Moon', 1);
  INSERT INTO Moons (name, planet_id) VALUES ('Demios', 2);
  INSERT INTO Moons (name, planet_id) VALUES ('Phobis', 2);
  INSERT INTO Moons (name, planet_id) VALUES ('Naiad', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Thalassa', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Despina', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Galatea', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Larissa', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('S/2004 N 1', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Proteus', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Triton', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Nereid', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Halimede', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Sao', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Laomedeia', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Psamathe', 3);
  INSERT INTO Moons (name, planet_id) VALUES ('Neso', 3);



INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', "The Moon"),
  ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');

