-- *****************************************************************************
-- * Create Tables
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Accounts
-- -----------------------------------------------------------------------------
CREATE TABLE Accounts (
  account_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  account_name VARCHAR(30) UNIQUE ,
  account_password VARCHAR(60) ,
  account_email VARCHAR(30) UNIQUE ,
  account_start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Location Types
-- -----------------------------------------------------------------------------
CREATE TABLE Location_Types (
  location_type_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  location_type_name VARCHAR(30) UNIQUE
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Locations
-- -----------------------------------------------------------------------------
CREATE TABLE Locations (
  location_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  location_name VARCHAR(30) UNIQUE ,
  location_level INT NOT NULL DEFAULT 1 ,
  location_type INT ,
  CONSTRAINT location_type
    FOREIGN KEY (location_type)
    REFERENCES Location_Types (location_type_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Travel
-- -----------------------------------------------------------------------------
CREATE TABLE Travel (
  src_location_id INT ,
  dest_location_id INT ,
  travel_level INT NOT NULL DEFAULT 1 ,
  travel_cost INT NOT NULL DEFAULT 1 ,
  CONSTRAINT src_location_id
    FOREIGN KEY (src_location_id)
    REFERENCES Locations (location_id) ,
  CONSTRAINT dest_location_id
    FOREIGN KEY (dest_location_id)
    REFERENCES Locations (location_id) ,
  PRIMARY KEY (src_location_id, dest_location_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Heroes
-- -----------------------------------------------------------------------------
CREATE TABLE Heroes (
  hero_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  hero_name VARCHAR(30) NULL UNIQUE ,
  hero_level INT NOT NULL DEFAULT 1 ,
  hero_experience INT NOT NULL DEFAULT 0 ,
  hero_skill_points INT NOT NULL DEFAULT 0 ,
  hero_tokens INT NOT NULL DEFAULT 10 ,
  hero_moolah INT NOT NULL DEFAULT 0 ,
  hero_is_alive BOOLEAN NOT NULL DEFAULT TRUE ,
  hero_location INT ,
  hero_birth TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  hero_tokens_spent INT NOT NULL DEFAULT 0 ,  
  CONSTRAINT hero_location
    FOREIGN KEY (hero_location)
    REFERENCES Locations (location_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Link Accounts to Heroes
-- -----------------------------------------------------------------------------
CREATE TABLE Account_Heroes (
  AH_account_id INT ,
  AH_hero_id INT ,
  active_hero BOOL NOT NULL DEFAULT FALSE ,
  CONSTRAINT AH_account_id
    FOREIGN KEY (AH_account_id)
    REFERENCES Accounts (account_id) ,
  CONSTRAINT AH_hero_id
    FOREIGN KEY (AH_hero_id)
    REFERENCES Heroes (hero_id) ,
  PRIMARY KEY (AH_account_id, AH_hero_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Experience Chart for Leveling Up Hero
-- -----------------------------------------------------------------------------
CREATE TABLE Hero_Experience (
  level_from INT NOT NULL DEFAULT 0,
  level_to INT NOT NULL DEFAULT 0 ,
  experience_needed INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (level_from, level_to)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Experience Chart for Leveling Up Hero
-- -----------------------------------------------------------------------------
CREATE TABLE Weapon_Experience (
  level_from INT NOT NULL DEFAULT 0,
  level_to INT NOT NULL DEFAULT 0 ,
  experience_needed INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (level_from, level_to)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Experience Chart for Leveling Up Hero
-- -----------------------------------------------------------------------------
CREATE TABLE Armor_Experience (
  level_from INT NOT NULL DEFAULT 0,
  level_to INT NOT NULL DEFAULT 0 ,
  experience_needed INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (level_from, level_to)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Elements
-- -----------------------------------------------------------------------------
CREATE TABLE Elements (
  element_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  element_name VARCHAR(30) UNIQUE ,
  element_description TEXT
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Element Effectiveness
-- -----------------------------------------------------------------------------
CREATE TABLE Element_Effectiveness (
  element1_id INT ,
  element2_id INT ,
  element_effectiveness INT NOT NULL DEFAULT 100 ,
  CONSTRAINT element1_id
    FOREIGN KEY (element1_id)
    REFERENCES Elements (element_id) ,
  CONSTRAINT element2_id
    FOREIGN KEY (element2_id)
    REFERENCES Elements (element_id) ,
  PRIMARY KEY (element1_id, element2_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Items
-- -----------------------------------------------------------------------------
CREATE TABLE Items (
  item_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  item_name VARCHAR(30) UNIQUE ,
  item_description TEXT ,
  item_is_soul BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Weapons
-- -----------------------------------------------------------------------------
CREATE TABLE Weapons (
  weapon_item_id INT ,
  weapon_element INT NOT NULL DEFAULT 1 ,
  weapon_starting_level INT NOT NULL DEFAULT 1 ,
  weapon_starting_strength INT NOT NULL DEFAULT 1 ,
  weapon_starting_magic INT NOT NULL DEFAULT 1 ,
  weapon_starting_max_condition INT NOT NULL DEFAULT 20 ,
  CONSTRAINT weapon_item_id
    FOREIGN KEY (weapon_item_id)
    REFERENCES Items (item_id) ,
  CONSTRAINT weapon_element
    FOREIGN KEY (weapon_element)
    REFERENCES Elements(element_id) ,
  PRIMARY KEY (weapon_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Link Heroes to Weapons
-- -----------------------------------------------------------------------------
CREATE TABLE Hero_Weapons (
  HW_hero_id INT ,
  HW_item_id INT ,
  weapon_level INT NOT NULL DEFAULT 1 ,
  weapon_experience INT NOT NULL DEFAULT 0 ,
  weapon_strength INT NOT NULL DEFAULT 1 ,
  weapon_magic INT NOT NULL DEFAULT 1 ,
  weapon_max_condition INT NOT NULL DEFAULT 10 ,
  weapon_condition INT NOT NULL DEFAULT 10 ,
  active_weapon BOOL NOT NULL DEFAULT FALSE ,
  CONSTRAINT HW_hero_id
    FOREIGN KEY (HW_hero_id)
    REFERENCES Heroes(hero_id) ,
  CONSTRAINT HW_item_id
    FOREIGN KEY (HW_item_id)
    REFERENCES Weapons(weapon_item_id) ,
  PRIMARY KEY (HW_hero_id, HW_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Armor
-- -----------------------------------------------------------------------------
CREATE TABLE Armor (
  armor_item_id INT ,
  armor_element INT NOT NULL DEFAULT 1,
  armor_starting_level INT NOT NULL DEFAULT 1 ,
  armor_starting_defense INT NOT NULL DEFAULT 1 ,
  armor_starting_barrier INT NOT NULL DEFAULT 1 ,
  armor_starting_max_condition INT NOT NULL DEFAULT 10 ,
  armor_starting_max_health INT NOT NULL DEFAULT 10 ,
  CONSTRAINT armor_item_id
    FOREIGN KEY (armor_item_id)
    REFERENCES Items(item_id) ,
  CONSTRAINT armor_element
    FOREIGN KEY (armor_element)
    REFERENCES Elements (element_id) ,
  PRIMARY KEY(armor_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Link Heroes to Armor
-- -----------------------------------------------------------------------------
CREATE TABLE Hero_Armor (
  HA_hero_id INT ,
  HA_item_id INT ,
  armor_level INT NOT NULL DEFAULT 1 ,
  armor_experience INT NOT NULL DEFAULT 0,
  armor_defense INT NOT NULL DEFAULT 1 ,
  armor_barrier INT NOT NULL DEFAULT 1 ,
  armor_max_condition INT NOT NULL DEFAULT 10 ,
  armor_max_health INT NOT NULL DEFAULT 10 ,
  armor_condition INT NOT NULL DEFAULT 10 ,
  armor_health INT NOT NULL DEFAULT 10 ,
  active_armor BOOL NOT NULL DEFAULT FALSE ,
  CONSTRAINT HA_hero_id
    FOREIGN KEY (HA_hero_id)
    REFERENCES Heroes (hero_id) ,
  CONSTRAINT HA_item_id
    FOREIGN KEY (HA_item_id)
    REFERENCES Armor (armor_item_id) ,
  PRIMARY KEY (HA_hero_id, HA_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Link Items to Shops
-- -----------------------------------------------------------------------------
CREATE TABLE Shop_Items (
  SI_location_id INT ,
  SI_item_id INT ,
  SI_cost INT NOT NULL DEFAULT 0 ,
  CONSTRAINT SI_location_id
    FOREIGN KEY (SI_location_id)
    REFERENCES Locations (location_id) ,
  CONSTRAINT SI_item_id
    FOREIGN KEY (SI_item_id)
    REFERENCES Items (item_id) ,
  PRIMARY KEY (SI_location_id, SI_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Link Heroes to Items
-- -----------------------------------------------------------------------------

CREATE TABLE Hero_Inventory (
  HI_hero_id INT ,
  HI_item_id INT ,
  HI_quantity INT NOT NULL DEFAULT 1 ,
  CONSTRAINT HI_hero_id
    FOREIGN KEY (HI_hero_id)
    REFERENCES Heroes (hero_id) ,
  CONSTRAINT HI_item_id
    FOREIGN KEY (HI_item_id)
    REFERENCES Items (item_id) ,
  PRIMARY KEY (HI_hero_id, HI_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Effects
-- -----------------------------------------------------------------------------
CREATE TABLE Effects (
  effect_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  effect_name VARCHAR(30) UNIQUE ,
  effect_description TEXT
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Usable Items
-- -----------------------------------------------------------------------------
CREATE TABLE Usable_Items (
  usable_item_id INT ,
  usable_item_level INT NOT NULL DEFAULT 1 ,
  usable_item_potency INT NOT NULL DEFAULT 1 ,
  usable_item_effect INT NOT NULL DEFAULT 1 ,
  usable_in_battle BOOLEAN NOT NULL DEFAULT FALSE ,
  CONSTRAINT usable_item_id
    FOREIGN KEY (usable_item_id)
    REFERENCES Items (item_id) ,
  CONSTRAINT usable_item_effect
    FOREIGN KEY (usable_item_effect)
    REFERENCES Effects(effect_id) ,
  PRIMARY KEY (usable_item_id)
)ENGINE=InnoDB;


-- -----------------------------------------------------------------------------
-- Enemies
-- -----------------------------------------------------------------------------
CREATE TABLE Enemies (
  enemy_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  enemy_name VARCHAR(30) UNIQUE ,
  enemy_description TEXT ,
  enemy_level INT NOT NULL DEFAULT 1 ,
  enemy_element INT NOT NULL DEFAULT 1 ,
  enemy_strength INT NOT NULL DEFAULT 1 ,
  enemy_magic INT NOT NULL DEFAULT 1 ,
  enemy_defense INT NOT NULL DEFAULT 1 ,
  enemy_barrier INT NOT NULL DEFAULT 1 ,
  enemy_max_health INT NOT NULL DEFAULT 10 ,
  enemy_experience INT NOT NULL DEFAULT 1,
  enemy_is_boss BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Enemy_Locations
-- -----------------------------------------------------------------------------
CREATE TABLE Enemy_Locations (
  EL_enemy_id INT ,
  EL_location_id INT ,
  enemy_probability INT NOT NULL DEFAULT 1,
  CONSTRAINT EL_enemy_id
    FOREIGN KEY (EL_enemy_id)
    REFERENCES Enemies (enemy_id) ,
  CONSTRAINT EL_location_id
    FOREIGN KEY (EL_location_id)
    REFERENCES Locations(location_id) ,
  PRIMARY KEY (EL_enemy_id, EL_location_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Battles
-- -----------------------------------------------------------------------------
CREATE TABLE Battles (
  battle_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  battle_hero_id INT ,
  battle_enemy_id INT ,
  battle_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  battle_is_complete BOOLEAN NOT NULL DEFAULT FALSE ,
  battle_enemy_health INT NOT NULL DEFAULT 0,
  CONSTRAINT battle_hero_id
    FOREIGN KEY (battle_hero_id)
    REFERENCES Heroes (hero_id) ,
  CONSTRAINT battle_enemy_id
    FOREIGN KEY (battle_enemy_id)
    REFERENCES Enemies (enemy_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Battle Rewards
-- -----------------------------------------------------------------------------
CREATE TABLE Battle_Rewards (
  BR_enemy_id INT ,
  BR_experience INT NOT NULL DEFAULT 0 ,
  BR_moolah INT NOT NULL DEFAULT 0 ,
  BR_tokens INT NOT NULL DEFAULT 0 ,
  BR_skill_points INT NOT NULL DEFAULT 0 ,
  CONSTRAINT BR_enemy_id
    FOREIGN KEY (BR_enemy_id)
    REFERENCES Enemies (enemy_id) ,
  PRIMARY KEY (BR_enemy_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Battle Loot
-- -----------------------------------------------------------------------------
CREATE TABLE Battle_Loot (
  BL_enemy_id INT ,
  BL_item_id INT ,
  BL_quantity INT NOT NULL DEFAULT 1 ,
  BL_chance INT NOT NULL DEFAULT 100 ,
  CONSTRAINT BL_enemy_id
    FOREIGN KEY (BL_enemy_id)
    REFERENCES Enemies (enemy_id) ,
  CONSTRAINT BL_item_id
    FOREIGN KEY (BL_item_id)
    REFERENCES Items (item_id) ,
  PRIMARY KEY (BL_enemy_id, BL_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Quests
-- -----------------------------------------------------------------------------
CREATE TABLE Quests (
  quest_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  quest_name VARCHAR(30) UNIQUE ,
  quest_description TEXT ,
  quest_level INT NOT NULL DEFAULT 1 ,
  quest_reward_moolah INT NOT NULL DEFAULT 1 ,
  quest_repeatable BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Quests Needed Items
-- -----------------------------------------------------------------------------
CREATE TABLE Quest_Needed_Items (
  QNI_quest_id INT ,
  QNI_item_id INT ,
  quest_needed_quantity INT NOT NULL DEFAULT 1 ,
  CONSTRAINT QNI_quest_id
    FOREIGN KEY (QNI_quest_id)
    REFERENCES Quests (quest_id) ,
  CONSTRAINT QNI_item_id
    FOREIGN KEY (QNI_item_id)
    REFERENCES Items (item_id) ,
  PRIMARY KEY (QNI_quest_id, QNI_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Quest Rewards
-- -----------------------------------------------------------------------------
CREATE TABLE Quest_Rewards (
  QR_quest_id INT ,
  QR_experience INT NOT NULL DEFAULT 0 ,
  QR_moolah INT NOT NULL DEFAULT 0 ,
  QR_tokens INT NOT NULL DEFAULT 0 ,
  QR_skill_points INT NOT NULL DEFAULT 0 ,
  CONSTRAINT QR_quest_id
    FOREIGN KEY (QR_quest_id)
    REFERENCES Quests (quest_id) ,
  PRIMARY KEY (QR_quest_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Quests Needed Items
-- -----------------------------------------------------------------------------
CREATE TABLE Quest_Loot (
  QL_quest_id INT ,
  QL_item_id INT ,
  quest_loot_quantity INT NOT NULL DEFAULT 1 ,
  CONSTRAINT QL_quest_id
    FOREIGN KEY (QL_quest_id)
    REFERENCES Quests (quest_id) ,
  CONSTRAINT QL_item_id
    FOREIGN KEY (QL_item_id)
    REFERENCES Items (item_id) ,
  PRIMARY KEY (QL_quest_id, QL_item_id)
)ENGINE=InnoDB;

-- -----------------------------------------------------------------------------
-- Attach Heroes to Quests
-- -----------------------------------------------------------------------------
CREATE TABLE Hero_Quests (
  HQ_hero_id INT ,
  HQ_quest_id INT ,
  quest_in_progress BOOLEAN NOT NULL DEFAULT FALSE ,
  quest_completion_number INT NOT NULL DEFAULT 0 ,
  CONSTRAINT HQ_hero_id
    FOREIGN KEY (HQ_hero_id)
    REFERENCES Heroes (hero_id) ,
  CONSTRAINT HQ_quest_id
    FOREIGN KEY (HQ_quest_id)
    REFERENCES Quests (quest_id) ,
  PRIMARY KEY (HQ_hero_id, HQ_quest_id)
)ENGINE=InnoDB;
