local mType = Game.createMonsterType("Unbound Defiler")
local monster = {}

monster.description = "an unbound defiler"
monster.experience = 3700
monster.outfit = {
	lookType = 238,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2650
monster.maxHealth = 2650
monster.race = "venom"
monster.corpse = 6532
monster.speed = 160
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 85,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 80, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 300, interval = 4000}},
	{name ="combat", interval = 2000, chance = 13, minDamage = -160, maxDamage = -295, type = COMBAT_LIFEDRAIN, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="combat", interval = 2000, chance = 9, target = false},
	{name ="combat", interval = 2000, chance = 6, target = false},
	{name ="combat", interval = 2000, chance = 8, target = false},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 10, minDamage = -300, maxDamage = -500, radius = 8, effect = CONST_ME_HITBYPOISON, target = false},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 10, minDamage = -400, maxDamage = -725, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 14, minDamage = -120, maxDamage = -170, type = COMBAT_EARTHDAMAGE, radius = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 2000, chance = 15, minDamage = 250, maxDamage = 450, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
