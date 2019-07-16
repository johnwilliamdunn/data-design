ALTER DATABASE jdunn33 CHAR SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE if exists account;
DROP TABLE if exists relation;
DROP TABLE if exists relation


CREATE TABLE user(
   userId BINARY(16) not null,
   userName VARCHAR(255) not null ,
   userHash char(97) not null ,
   userEmail VARCHAR(128) not null,
   unique (userEmail),
   primary key (userId)
);

CREATE TABLE relation(
   relationUserId BINARY(16) not null,
   relationType char(32) not null,
   relationAccountId BINARY(16) not null,
   FOREIGN KEY (relationUserId) REFERENCES user(userId)
);

CREATE TABLE account(
	accountNumber CHAR(97) not null,
	accountDue VARCHAR(32) not null,
	accountId BINARY(16) not null,
	INDEX (accountId)
);