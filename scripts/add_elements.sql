-- *****************************************************************************
-- * Add Elements
-- *****************************************************************************
INSERT INTO Elements (element_name, element_description) VALUES
    ('Non-Elemental','Physical damage only.'),
    ('Fire','Hot stuff here.'),
    ('Water','Wet. Very wet.'),
    ('Wind','Very airy.'),
    ('Earth','Solid as a rock.'),
    ('Electric','Does damage. Shocking.'),
    ('Shadow','Strikes before you see it coming.'),
    ('Light','Essence of holy.'),
    ('Poison','Bites worse than its bark.'),
    ('Frost','Cold as ice.'),
    ('Astral','Like a spirit bomb.'),
    ('Nature','All Natural.');

-- *****************************************************************************
-- * Add Element Effectiveness
-- *****************************************************************************

-- -----------------------------------------------------------------------------
-- Non-Elemental
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Non-Elemental' AND e2.element_name = 'Nature';



-- -----------------------------------------------------------------------------
-- Fire
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Fire' AND e2.element_name = 'Nature';
    
-- -----------------------------------------------------------------------------
-- Water
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Water' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Wind
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Wind' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Earth
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Earth' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Electric
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Electric' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Shadow
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Shadow' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Light
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Light' AND e2.element_name = 'Nature';


-- -----------------------------------------------------------------------------
-- Poison
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Poison' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Frost
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Frost' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Astral
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '50'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '20'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '10'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Astral' AND e2.element_name = 'Nature';

-- -----------------------------------------------------------------------------
-- Nature
-- -----------------------------------------------------------------------------

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Non-Elemental';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Fire';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Water';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '150'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Wind';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Earth';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Electric';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Shadow';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Light';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '200'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Poison';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Frost';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Astral';

INSERT INTO Element_Effectiveness SELECT e1.element_id, e2.element_id, '100'
	FROM Elements e1 JOIN Elements e2 WHERE e1.element_name = 'Nature' AND e2.element_name = 'Nature';
    