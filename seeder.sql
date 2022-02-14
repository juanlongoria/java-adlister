USE adlister_db;

TRUNCATE users;
TRUNCATE ads;

INSERT INTO users (username, email, password) VALUES ('admin', 'admin@codemonarchs.eu',
    '$2a$12$5DZgMKU7Qtj6kfY1Zo5Vx.1d4.OR8RWhCVNwkQiOB8oLxWUFj89GG');

DESCRIBE users;