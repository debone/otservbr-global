local mType = Game.createMonsterType("Furious Troll")
local monster = {}

monster.description = "a furious troll"
monster.experience = 185
monster.outfit = {
	lookType = 15,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 245
monster.maxHealth = 245
monster.race = "blood"
monster.corpse = 5960
monster.speed = 180
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Mechanical Fighter", chance = 90, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Slice! Slice!", yell = false},
	{text = "DIE!!!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 93000, maxCount = 146},
	{id = "platinum coin", chance = 6000},
	{id = "war hammer", chance = 750},
	{id = "bunch of troll hair", chance = 4400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)