ALTER DATABASE jdunn33 CHAR SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS relation;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS user;


CREATE TABLE user(
	userId BINARY(16) NOT NULL,
	userName VARCHAR(255) NOT NULL ,
	userHash CHAR(97) NOT NULL ,
	userEmail VARCHAR(128) NOT NULL,
	UNIQUE (userEmail),
	PRIMARY KEY (userId)
);

CREATE TABLE account(
	accountNumber VARCHAR(97) NOT NULL,
	accountDue VARCHAR(32) NOT NULL,
	accountId BINARY(16) NOT NULL,
	INDEX (accountId),
	UNIQUE (accountnumber),
	PRIMARY KEY (accountId)
);

CREATE TABLE relation(
	relationUserId BINARY(16) NOT NULL,
	relationType VARCHAR(16) NOT NULL,
	relationAccountId BINARY(16) NOT NULL,
	FOREIGN KEY (relationAccountId) REFERENCES account(accountid),
	FOREIGN KEY (relationUserId) REFERENCES user(userId)
);
