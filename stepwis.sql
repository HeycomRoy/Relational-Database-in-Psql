Question 5:
1. Stepwise:
	CREATE VIEW NoTimesPerRobber AS SELECT RobberId, COUNT(RobberId) AS NoRobberies
                                        FROM Accomplices
                                        GROUP BY RobberId;
                                        
        CREATE VIEW AverageRobberies AS SELECT AVG(NoRobberies) AS "Average Robberies"
                                        FROM NoTimesPerRobber;
                                        
        CREATE VIEW Earn AS SELECT RobberId, SUM(Share) AS Earnings
                                        FROM Accomplices
                                        GROUP BY RobberId;
                                        
        CREATE VIEW RobberIdLargeAVG AS SELECT RobberId
                                        FROM NoTimesPerRobber n, AverageRobberies a
                                        WHERE n.NoRobberies > a."Average Robberies";
                                        
        CREATE VIEW ResultNames AS SELECT NickName
                                        FROM RobberIdLargeAVG NATURAL JOIN Earn NATURAL JOIN  Robbers
                                        WHERE NoYears = 0
                                        ORDER BY Earnings DESC;
        
        SELECT * FROM ResultNames;
        