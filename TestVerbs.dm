/mob/CombatMob/PC

	verb
		changeIcon()

			set category = "Testing"

			var/randNum = rand(0,4)
			src.setIcon(randNum)
			src << "Random icon number [randNum]"