/mob/CombatMob/PC

	verb
		changeIcon()

			set category = "Testing"
			var/picked = rand(0,4)
			src.setIcon(picked)
			src << "Random icon number [picked]"

		changeHair(style as num, hairColor as color)

			set category = "Testing"

			haircut(style, hairColor)

		changeName(name as text)

			set category = "Testing"

			src.name = name

		Load()
			set category = "Testing"
			src.client.load()

		WhoAmI()
			set category = "Testing"

			src << src.name
			src << src.race

		ColorTest(C as color)
			set category = "Testing"
