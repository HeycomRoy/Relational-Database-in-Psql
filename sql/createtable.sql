/**
================================Revoke================================
*/
REVOKE CONNECT ON DATABASE cuiyaoyu FROM PUBLIC;


/**
================================Create Relation Schema================================
*/
/**
building schemas
*/
CREATE TABLE Banks(	
      BankName  	varchar(255),
      City      	varchar(255),
      NoAccounts	integer NOT NULL,
      Security		varchar(255) NOT NULL,
      CONSTRAINT SecurityRange CHECK(Security IN ('weak', 'good', 'very good', 'excellent')),
      CONSTRAINT numeric CHECK(NoAccounts >= 0),
      PRIMARY KEY	(BankName, City)
);

CREATE TABLE Robberies(
      BankName		varchar(255),
      City		varchar(255),
      Date		date,
      Amount		decimal,
      CONSTRAINT numeric CHECK (Amount >= 0),
      PRIMARY KEY	(BankName, City, Date),
      FOREIGN KEY	(BankName, City) references Banks(BankName, City)
);

CREATE TABLE Plans(
      BankName		varchar(255),
      City		varchar(255),
      PlannedDate	date,
      NoRobbers		integer,
      CONSTRAINT numeric CHECK (NoRobbers > 0),
      PRIMARY KEY	(BankName, City, PlannedDate),
      FOREIGN KEY	(BankName, City) references Banks(BankName, City)
);

CREATE TABLE Robbers(
      RobberId		SERIAL UNIQUE,
      Nickname		varchar(255) NOT NULL,
      Age		integer,
      NoYears		integer,
      CONSTRAINT numeric CHECK (Age >= 0 AND NoYears >= 0),
      CONSTRAINT AgeVsNoYears CHECK (Age > NoYears),
      PRIMARY KEY	(RobberId)
);

CREATE TABLE Skills(
      SkillId		SERIAL UNIQUE,
      Description	varchar(255) NOT NULL UNIQUE,
      PRIMARY KEY	(SkillId)
);

CREATE TABLE HasSkills(
      RobberId		integer,
      SkillId		integer,
      Preference	integer NOT NULL,
      Grade		varchar(2) NOT NULL,
      CONSTRAINT pre_range CHECK (Preference > 0),
      CONSTRAINT grade CHECK (Grade SIMILAR TO '[A-C][\+\-\ ]?|D|E'),
      CONSTRAINT RobberPref UNIQUE (RobberId, Preference),
      CONSTRAINT RobberPrefSkill UNIQUE (RobberId, SkillId, Preference),
      PRIMARY KEY	(RobberId, SkillId),
      FOREIGN KEY	(RobberId) references Robbers(RobberId),
      FOREIGN KEY	(SkillId) references Skills(SkillId)
);

CREATE TABLE HasAccounts(
      RobberId		integer,
      BankName		varchar(255),
      City		varchar(255),
      PRIMARY KEY	(RobberId, BankName, City),
      FOREIGN KEY	(RobberId) references Robbers(RobberId),
      FOREIGN KEY	(BankName, City) references Banks(BankName, City)
);

CREATE TABLE Accomplices(
      RobberId		integer,
      BankName		varchar(255),
      City		varchar(255),
      RobberyDate	date,
      Share		decimal,
      CONSTRAINT numeric CHECK (share >= 0),
      PRIMARY KEY	(RobberId, BankName, City, RobberyDate),
      FOREIGN KEY	(RobberId) references Robbers(RobberId),
      FOREIGN KEY	(BankName, City) references Banks(BankName, City)
);

