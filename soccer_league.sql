-- Part Three: Soccer League
DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;


CREATE TABLE TEAMS (
  id SERIAL PRIMARY KEY,
  team_name TEXT,
  league TEXT,
  date_start TEXT,
  date_end TEXT
);

CREATE TABLE PLAYERS (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  team INT NOT NULL,
  FOREIGN KEY (team) REFERENCES TEAMS(id) ON DELETE CASCADE
);

CREATE TABLE REFEREES (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE GAMES (
  id SERIAL PRIMARY KEY,
  game_referees INT NOT NULL,
  game_player INT NOT NULL,
  goals_per_player INT NOT NULL,
  FOREIGN KEY (game_referees) REFERENCES REFEREES (id) ON DELETE CASCADE,
  FOREIGN KEY (game_player) REFERENCES PLAYERS (id) ON DELETE CASCADE
);

INSERT INTO TEAMS (team_name, league, date_start, date_end) VALUES ('Chicago Fire', 'Midwest League', '2022-05-01', '2022-08-01');
INSERT INTO TEAMS (team_name, league, date_start, date_end) VALUES ('Michigan Loggers', 'Midwest League', '2022-05-01', '2022-08-01');
INSERT INTO TEAMS (team_name, league, date_start, date_end) VALUES ('Florida Hawks', 'Southeast League', '2022-05-01', '2022-08-01');
INSERT INTO TEAMS (team_name, league, date_start, date_end) VALUES ('Californa Coasters', 'West League', '2022-05-01', '2022-08-01');

INSERT INTO PLAYERS (first_name, last_name, team) VALUES ('Sam', 'Solerson', 1);
INSERT INTO PLAYERS (first_name, last_name, team) VALUES ('Joe', 'Franks', 2);
INSERT INTO PLAYERS (first_name, last_name, team) VALUES ('Addie', 'Topler', 3);
INSERT INTO PLAYERS (first_name, last_name, team) VALUES ('Ed', 'Copper', 4);

INSERT INTO REFEREES (first_name, last_name) VALUES ('Joe', 'Buck');
INSERT INTO REFEREES (first_name, last_name) VALUES ('George', 'Franks');
INSERT INTO REFEREES (first_name, last_name) VALUES ('Clark', 'Kent');
INSERT INTO REFEREES (first_name, last_name) VALUES ('Michael', 'Kenton');

INSERT INTO GAMES (game_referees, game_player, goals_per_player) VALUES (1,1,5);
INSERT INTO GAMES (game_referees, game_player, goals_per_player) VALUES (2,2,7);
INSERT INTO GAMES (game_referees, game_player, goals_per_player) VALUES (3,3,2);
INSERT INTO GAMES (game_referees, game_player, goals_per_player) VALUES (4,4,8);

SELECT team_name, date_start, date_end FROM TEAMS;
