ALTER DATABASE jdunn33 CHAR SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE if exists relation;
DROP TABLE if exists account;
DROP TABLE if exists user;


CREATE TABLE user(
	userId BINARY(16) not null,
	userName VARCHAR(255) not null ,
	userHash VARCHAR(97) not null ,
	userEmail VARCHAR(128) not null,
	unique (userEmail),
	primary key (userId)
);

CREATE TABLE account(
	accountNumber VARCHAR(97) not null,
	accountDue VARCHAR(32) not null,
	accountId BINARY(16) not null,
	INDEX (accountId),
	unique (accountnumber)
);

CREATE TABLE relation(
	relationUserId BINARY(16) not null,
	relationType CHAR(16) not null,
	relationAccountId BINARY(16) not null,
	FOREIGN KEY (relationAccountId) REFERENCES account(accountid),
	FOREIGN KEY (relationUserId) REFERENCES user(userId)
);
