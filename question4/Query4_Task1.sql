
/******************************************Query Task 1******************************************/

/**
Retrieve BankName and Security for all banks in Chicago that have more than 9000 accounts.
*/
SELECT BankName, Security FROM Banks WHERE City = 'Chicago' AND NoAccounts > 9000;

