---------------------------------------------------------
-- No Barbarian Mode Compatible Boosts and Policies v.1.1
-- Author: KonatsuSV
-- Translation: (EN, CN)Juri Kimura
---------------------------------------------------------

---------------------------------------------------------
-- Military Tradition
---------------------------------------------------------
UPDATE LocalizedText
SET Text = 'Have 3 land combat units in your military.'
WHERE (Tag = 'LOC_BOOST_TRIGGER_MILITARY_TRADITION'
AND Language = 'en_US');

UPDATE LocalizedText
SET Text = 'Your soldiers hope that the formation of a sizable army is the start of a long line of military successes.'
WHERE (Tag = 'LOC_BOOST_TRIGGER_LONGDESC_MILITARY_TRADITION'
AND Language = 'en_US');

UPDATE LocalizedText
SET Text = '您的军队有3个陆地战斗单位。'
WHERE (Tag = 'LOC_BOOST_TRIGGER_MILITARY_TRADITION'
AND Language = 'zh_Hans_CN');

UPDATE LocalizedText
SET Text = '您的士兵希望您对于组建军队的渴求是一长串军事胜利的开始。'
WHERE (Tag = 'LOC_BOOST_TRIGGER_MILITARY_TRADITION'
AND Language = 'zh_Hans_CN');

---------------------------------------------------------
-- Bronze Working
---------------------------------------------------------
UPDATE LocalizedText
SET Text = 'Build a Copper Mine.'
WHERE (Tag = 'LOC_BOOST_TRIGGER_BRONZE_WORKING'
AND Language = 'en_US');

UPDATE LocalizedText
SET Text = 'Your success in utilizing mineral resources provide the possibility for stronger weaponry.'
WHERE (Tag = 'LOC_BOOST_TRIGGER_LONGDESC_BRONZE_WORKING'
AND Language = 'en_US');

UPDATE LocalizedText
SET Text = '建造一1个铜矿。'
WHERE (Tag = 'LOC_BOOST_TRIGGER_BRONZE_WORKING'
AND Language = 'zh_Hans_CN');

UPDATE LocalizedText
SET Text = '您对于矿产资源的有效利用使得更强大的武器变为可能。'
WHERE (Tag = 'LOC_BOOST_TRIGGER_LONGDESC_BRONZE_WORKING'
AND Language = 'zh_Hans_CN');

---------------------------------------------------------
-- Discipline
---------------------------------------------------------
UPDATE LocalizedText
SET Text = '+5 [ICON_Strength] Unit Combat Strength when defending.'
WHERE (Tag = 'LOC_POLICY_DISCIPLINE_DESCRIPTION'
AND Language = 'en_US');

UPDATE LocalizedText
SET Text = '防守时+5[ICON_Strength] 单位战斗力。'
WHERE (Tag = 'LOC_POLICY_DISCIPLINE_DESCRIPTION'
AND Language = 'zh_Hans_CN');

INSERT INTO LocalizedText
VALUES
('en_US','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_NAME','Disciplinary Training'),
('en_US','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_DESCRIPTION','+5 [ICON_Strength] Combat Strength when defending with the Discipline policy card.'),
('zh_Hans_CN','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_NAME','纪律训练'),
('zh_Hans_CN','LOC_ABILITY_DISCIPLINE_DEFENSE_BUFF_DESCRIPTION','在使用纪律政策卡时，防守时+5 [ICON_Strength] 战斗力。');
