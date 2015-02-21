/**
 * Playable character class, typically only inherited
 */
mob/CombatMob/PC

	// PC exclusive stats
	var
		energy
		energyMax

		level

		exp
		expMax

		speedExp
		speedExpMax

		skillPoints

		zenni

		race
		raceLabel

	// Stat panel
	Stat()

		statpanel("Stats")
		stat("", src)

		// Char creation must be completed first
		//stat("Power Level", "[src.powerLevel]/[src.powerLevelMax] ([round((src.powerLevel/src.powerLevelMax) * 100)]%)")
		//stat("Ki", "[src.ki]/[src.kiMax] ([round((src.ki/src.kiMax) * 100)]%)")
