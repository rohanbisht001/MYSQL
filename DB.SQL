create database new;

------------------------------------------------------------------
create table buggg(
    id INT,
    project_id INT,
    `name` VARCHAR(45),
    PRIMARY KEY(id) FOREIGN KEY(project_id) REFERENCES project(id)
);

INSERT INTO
    (id, project_id, name)
VALUES
    (1, 101, "rohan"),
    (2, 102, "roop"),
    (3, 103, "tinki"),
    (4, 104, "sura"),
    (5, 105, "chura");

-----------------------------------------------------------------
create table buggg_has_media(
    buggg_id INT,
    buggg_project_id INT,
    media_id INT,
    PRIMARY KEY(id) FOREIGN KEY (bug_id) REFERENCES bug(id),
    FOREIGN KEY (bug_project_id) REFERENCES bug(project_id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO
    (buggg_id, buggg_project_id, media_id)
VALUES
    (234, 1819, 2000),
    (236, 1820, 2001),
    (238, 1899, 2234);

------------------------------------------------------------------
create table comment(
    id INT,
    buggg_project_id INT,
    buggg_id INT,
    `text` TEXT,
    PRIMARY KEY(id) FOREIGN KEY (bug_id) REFERENCES bug(id) FOREIGN KEY (bug_project_id) REFERENCES bug(project_id),
);

INSERT INTO
    (id, buggg_project_id, buggg_id, text)
VALUES
    (1, 234, "good"),
    (2, 235, "okay"),
    (3, 236, "poor");

--------------------------------------------------------------------
create table comment_has_media(
    comment_id INT,
    comment_buggg_project_id INT,
    comment_buggg_id INT,
    media_id INT,
    PRIMARY KEY() FOREIGN KEY (comment_id) REFERENCES comment(id),
    FOREIGN KEY (comment_bug_project_id) comment(bug_project_id),
    FOREIGN KEY (comment_bug_id) REFERENCES comment(bug_id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO
    (
        comment_id,
        comment_buggg_project_id,
        comment_buggg_id,
        media_id
    )
VALUES
    (,),
    (,,),
    (,,);

-------------------------------------------------------------------------
create table media(
    id INT,
    user_id INT,
    `path` VARCHAR(45),
    filetype VARCHAR(45),
    filesize DECIMAL(65, 2),
    PRIMARY KEY(id) FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO
    (id, user_id, path, filetype, filesize)
VALUES
    (,,),
    (,,),
    (,,);

------------------------------------------------------------------------
create table project (id INT, name VARCHAR(45), PRIMARY KEY(id))
INSERT INTO
    (id, name)
VALUES
    (,,),
    (,,),
    (,,);

-----------------------------------------------------------------------
create table project_has_user(
    project_id INT,
    user_id INT,
    manager TINYINT(1),
    PRIMARY KEY(id) FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(user_id) REFERENCES user(id)
);

INSERT INTO
    (project_id, user_id, manager)
VALUES
    (,,),
    (,,),
    (,,);

-------------------------------------------------------------------------
create table user(
    id INT,
    media_id INT,
    `name` VARCHAR(45),
    PRIMARY KEY(id)
) FOREIGN KEY(media_id) REFERENCES project(media_id);

INSERT INTO
    (id, media_id, name)
VALUES
    (,,),
    (,,),
    (,,);

-----------------------------------------------------------------------------------------
-----creating view
CREATE VIEW A AS
SELECT
    lastName,
    firstName,
    employeeNumber,
    email
from
    employees
WHERE
    employeeNumber > 1200;