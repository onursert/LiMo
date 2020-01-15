CREATE TABLE user_community (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  url varchar(100) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);