delete from user where id = 2;
delete from user where id = 3;

SET SQL_SAFE_UPDATES = 0;
delete from user where id = 4;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
delete from user where id = 5;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
delete from user where id = 6;
SET SQL_SAFE_UPDATES = 1;