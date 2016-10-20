
/******************************************INSERT******************************************/
/**
INSERT tuples into to banks table:
*/
INSERT INTO Banks VALUES (‘Loanshark Bank’, ‘Evanston’, 100, ‘very good’);
INSERT INTO Banks VALUES (‘EasyLoan Bank’, ‘Evanston’, -5, ‘excellent’);
INSERT INTO Banks VALUES (‘EasyLoan Bank’, ‘Evanston’, 100, ‘poor’);

/**
INSERT tuples into to Skills table:
*/
INSERT INTO Skills VALUES (20, ‘Guarding’);

/**
INSERT tuples into to Robbers table:
*/
INSERT INTO Robbers VALUES (1, ‘Shotgun’, 70, 0);
INSERT INTO Robbers VALUES (333, ‘Jail Mouse’, 25, 35);

/**
INSERT tuples into to HasSkills table:
*/
INSERT INTO HasSkills VALUES (333, 1, 1, ‘B-’);
INSERT INTO HasSkills VALUES (3, 20, 3, ‘B+’);
INSERT INTO HasSkills VALUES (1, 9, 1, ‘A+’);
INSERT INTO HasSkills VALUES (1, 2, 0, ‘A ’);

/**
INSERT tuples into to Robberies table:
*/
INSERT INTO Robberies VALUES (‘NXP Bank’, ‘Chicago’, ‘2009-01-08’, 1000);


/******************************************DELETE******************************************/
/**
DELETE tuples into to Banks table:
*/
DELETE FROM Banks WHERE BankName = ‘PickPocket Bank’ AND City = ‘Evanston’ AND NoAccounts = 2000 AND Security = ‘very good’;
DELETE FROM Banks WHERE BankName = ‘Gun Chase Bank’ AND City = ‘Evanston’ AND NoAccounts = 656565 AND Security = ‘excellent’;

/**
DELETE tuples into to Robbers table:
*/
DELETE FROM Robbers WHERE RobberId = 1 AND NickName = 'Al Capone' AND Age = 31 AND NoYears = 2;

/**
DELETE tuples into to Skills table:
*/
DELETE FROM Skills WHERE SkillId = 1 AND Description = 'Driving';
