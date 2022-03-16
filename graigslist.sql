-- Part Two: Graigslist
DROP DATABASE IF EXISTS graigslist;

CREATE DATABASE graigslist;

\c graigslist

CREATE TABLE REGION (
    id SERIAL PRIMARY KEY,
    county TEXT,
    city TEXT
);

CREATE TABLE USERS (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE CATEGORIES (
    id SERIAL PRIMARY KEY,
    title TEXT
);

CREATE TABLE POSTS (
    id SERIAL PRIMARY KEY,
    title TEXT,
    content TEXT,
    post_cat INT NOT NULL,
    posted_user INT NOT NULL,
    posted_location INT NOT NULL,
    FOREIGN KEY (post_cat) REFERENCES CATEGORIES(id) ON DELETE CASCADE,
    FOREIGN KEY (posted_user) REFERENCES USERS(id) ON DELETE CASCADE,
    FOREIGN KEY (posted_location) REFERENCES REGION(id) ON DELETE CASCADE
);


INSERT INTO REGION (county, city) VALUES ('Brown County', 'Green Bay');
INSERT INTO REGION (county, city) VALUES ('Brown County', 'Howard');
INSERT INTO REGION (county, city) VALUES ('Outagamie County', 'Pulaski');

INSERT INTO USERS (first_name, last_name) VALUES ('Joe', 'Smith');
INSERT INTO USERS (first_name, last_name) VALUES ('Jane', 'Jones');
INSERT INTO USERS (first_name, last_name) VALUES ('Jack', 'Sparrow');

INSERT INTO CATEGORIES (title) VALUES ('Crazy Things');
INSERT INTO CATEGORIES (title) VALUES ('Intresting Stuff');
INSERT INTO CATEGORIES (title) VALUES ('Out of This World');
INSERT INTO CATEGORIES (title) VALUES ('Really?');

INSERT INTO POSTS (title, content, post_cat, posted_user, posted_location) VALUES ('Get a Load of This', 'This is only the tip of the iceberg, you should see whats underneath', 1, 1, 1);
INSERT INTO POSTS (title, content, post_cat, posted_user, posted_location) VALUES ('Check This Out', 'If you build it they will come', 2, 2, 1);
INSERT INTO POSTS (title, content, post_cat, posted_user, posted_location) VALUES ('Want to defend space', 'Join US Space Force, it exists', 3, 3, 3);
INSERT INTO POSTS (title, content, post_cat, posted_user, posted_location) VALUES ('Yep that just happened', 'He really tripped on pure air', 4, 3, 3);
