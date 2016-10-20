
/******************************************Query Task 2******************************************/

/**
Retrieve BankName of all banks where Calamity Jane has an account.
The answer should list every bank at most once.
*/
SELECT DISTINCT BankName FROM  HasAccounts, Robbers WHERE NickName = 'Calamity Jane' AND HasAccounts.RobberId = Robbers.RobberId;

