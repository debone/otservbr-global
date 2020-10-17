local mType = Game.createMonsterType("Crypt Warden")
local monster = {}

monster.description = "a crypt warden"
monster.experience = 8400
monster.outfit = {
	lookType = 1190,
	lookHead = 41,
	lookBody = 38,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8300
monster.maxHealth = 8300
monster.race = "blood"
monster.corpse = 36485
monster.speed = 290
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 3},
	{id = "cyan crystal fragment", chance = 13670},
	{id = "green crystal fragment", chance = 1770},
	{id = "lamassu horn", chance = 10770},
	{id = "lamassu hoof", chance = 9700},
	{id = "small amethyst", chance = 8680},
	{id = "gold ingot", chance = 4660},
	{id = "green gem", chance = 1290},
	{id = "elven amulet", chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = -250, maxDamage = -430, target = false},
	{name ="combat", interval = 2000, chance = 8, minDamage = -250, maxDamage = -380, target = false},
	{name ="combat", interval = 2000, chance = 12, minDamage = -200, maxDamage = -480, type = COMBAT_EARTHDAMAGE, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 13, minDamage = -300, maxDamage = -450, type = COMBAT_HOLYDAMAGE, length = 5, spread = 3, effect = CONST_ME_HOLYAREA, target = false}
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 75},
	{type = COMBAT_DEATHDAMAGE , percent = -35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
