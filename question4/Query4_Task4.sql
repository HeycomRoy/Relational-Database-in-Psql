
/******************************************Query Task 4******************************************/

/**
Retrieve BankName and City of the first bank branch that was ever robbed by the gang.
*/
SELECT BankName, City FROM  Robberies ORDER BY Date LIMIT 1;

