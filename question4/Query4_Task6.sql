
/******************************************Query Task 6******************************************/

/**
Retrieve the Descriptions of all skills together with the RobberId and NickName of all robbers that possess this skill.
The answer should be grouped by skill description.
*/
SELECT Skills.Description, Robbers.RobberId, Robbers.NickName FROM Skills, Robbers, HasSkills
                                        WHERE Robbers.RobberId = HasSkills.RobberId AND HasSkills.SkillId = Skills.SkillId
                                        ORDER BY Description;

