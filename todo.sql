CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details VARCHAR NULL,
priority INT NOT NULL DEFAULT(1),
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Create List', 'example item', 1, current_timestamp);
UPDATE todos SET completed_at = current_timestamp WHERE title = 'Create List';

INSERT INTO todos (title, details, priority, created_at) VALUES ('Car Inspection', 'No really, Zoe. Remember. Due early April', 1, current_timestamp);
INSERT INTO todos (title, details, priority, created_at) VALUES ('Study Express-Sessions', 'No really, Zoe. You strugglin', 1, current_timestamp);
INSERT INTO todos (title, priority, created_at) VALUES ('Add Another Item', 3, current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Finish Daily Project', 'ok!', 2, current_timestamp);


SELECT title FROM todos WHERE completed_at IS NULL;

SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id = 4;

DELETE from todos WHERE completed_at IS NOT NULL;
