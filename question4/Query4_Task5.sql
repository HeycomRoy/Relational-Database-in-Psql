
/******************************************Query Task 5******************************************/

/**
Retrieve RobberId, Nickname and individual total ÒearningsÓ of those robbers who have earned more than
$30,000 by robbing banks.
The answer should be sorted in decreasing order of the total earnings.
*/
SELECT Accomplices.RobberId, Robbers.NickName, SUM(Share) AS Earnings FROM Accomplices, Robbers
                                                        WHERE Accomplices.RobberId = Robbers.RobberId
                                                        GROUP BY Accomplices.RobberId, Robbers.NickName
                                                        HAVING SUM(Share) > 30000
                                                        ORDER BY Earnings DESC;

