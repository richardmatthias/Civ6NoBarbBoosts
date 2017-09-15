---------------------------------------------------------
-- No Barbarian Mode Compatible Boosts and Policies v1.1
-- Author: KonatsuSV
-- Translation: (EN, CN)Juri Kimura
---------------------------------------------------------

---------------------------------------------------------
-- Military Tradition
---------------------------------------------------------
UPDATE Boosts
SET BoostClass = 'BOOST_TRIGGER_HAVE_X_LAND_UNITS'
WHERE CivicType = 'CIVIC_MILITARY_TRADITION';

UPDATE Boosts
SET NumItems = 3
WHERE CivicType = 'CIVIC_MILITARY_TRADITION';

---------------------------------------------------------
-- Bronze Working
---------------------------------------------------------
UPDATE Boosts 
SET BoostClass = 'BOOST_TRIGGER_IMPROVE_SPECIFIC_RESOURCE'
WHERE TechnologyType = 'TECH_BRONZE_WORKING';

UPDATE Boosts 
SET ImprovementType = 'IMPROVEMENT_MINE'
WHERE TechnologyType = 'TECH_BRONZE_WORKING';

UPDATE Boosts 
SET ResourceType = 'RESOURCE_COPPER'
WHERE TechnologyType = 'TECH_BRONZE_WORKING';

UPDATE Boosts 
SET NumItems = 0
WHERE TechnologyType = 'TECH_BRONZE_WORKING';

---------------------------------------------------------
-- Discipline
---------------------------------------------------------
UPDATE PolicyModifiers
SET ModifierId = 'DISCIPLINE_DEFENDBONUS'
WHERE PolicyType = 'POLICY_DISCIPLINE';

INSERT INTO Modifiers(ModifierId,ModifierType,SubjectRequirementSetId)
VALUES
('DISCIPLINE_DEFENDBONUS','MODIFIER_UNITS_GRANT_ABILITY'),
('DISCIPLINE_DEFENDBONUS_BUFF','MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH','DISCIPLINE_REQUIREMENTS');

INSERT INTO ModifierArguments(ModifierId,Name,Type,Value)
VALUES
('DISCIPLINE_DEFENDBONUS_BUFF','Amount','ARGTYPE_IDENTITY',5),
('DISCIPLINE_DEFENDBONUS','AbilityType','ARGTYPE_IDENTITY','ABILITY_DISCIPLINE_DEFENSE_BUFF');

INSERT INTO RequirementSetRequirements
VALUES
('DISCIPLINE_REQUIREMENTS','PLAYER_IS_DEFENDER_REQUIREMENTS');

INSERT INTO RequirementSetRequirements
VALUES
('DISCIPLINE_REQUIREMENTS','REQUIREMENTSET_TEST_ALL');

INSERT INTO UnitAbilities
VALUES
('ABILITY_DISCIPLINE_DEFENSE_BUFF','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_NAME','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_DESCRIPTION',1,0);

INSERT INTO UnitAbilityModifiers
VALUES
('ABILITY_DISCIPLINE_DEFENSE_BUFF','DISCIPLINE_DEFENDBONUS_BUFF');