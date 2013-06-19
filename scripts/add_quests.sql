-- *****************************************************************************
-- * Add Quests
-- *****************************************************************************
INSERT INTO Quests (quest_name, quest_level, quest_reward_moolah, quest_repeatable, quest_description) VALUES
    ('Kill the Chickens', '1', '5', TRUE, 'Go kill my five chickens and I will give you 5 moolah.');

-- *****************************************************************************
-- * Add Quest Needed Items
-- *****************************************************************************
INSERT INTO Quest_Needed_Items SELECT quest_id, item_id, '5' FROM Quests JOIN Items
	WHERE quest_name = 'Kill the Chickens' AND item_name = 'Chicken Soul';

-- *****************************************************************************
-- * Add Quest Loot
-- *****************************************************************************
INSERT INTO Quest_Loot SELECT quest_id, item_id, '5' FROM Quests JOIN Items
	WHERE quest_name = 'Kill the Chickens' AND item_name = 'Moolah';