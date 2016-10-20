
/******************************************Query Task 7******************************************/

/**
Retrieve RobberId, NickName, and the Number of Years in Prison for all robbers who were in prison for more than three years.
*/
SELECT RobberId, NickName, NoYears AS "Number of Years in Prison" FROM Robbers
                                        WHERE NoYears >3;


