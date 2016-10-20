
/******************************************Query Task 8******************************************/

/**
Retrieve RobberId, Nickname and the Number of Years not spent in prison for all robbers who spent more than half of their life in prison.
*/
SELECT RobberId, NickName, (Age-NoYears) AS "Number Of Years Not In Prison" FROM Robbers
                                        WHERE NoYears > (Age/2);


