
/******************************************Query Task 3******************************************/

/**
Retrieve BankName and City of all bank branches that have no branch in Chicago.
The answer should be sorted in increasing order of the number of accounts.
*/
SELECT BankName, City FROM  Banks
                      WHERE City != 'Chicago' 
                      ORDER BY NoAccounts;

