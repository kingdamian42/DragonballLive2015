/mob/CombatMob/PC

	verb
		changeIcon()

			set category = "Testing"
			var/picked = rand(0,4)
			src.setIcon(picked)
			src << "Random icon number [picked]"

		changeHair(style as num, r as num, g as num, b as num)

			set category = "Testing"

			haircut(style, r, g, b)

		changeName(name as text)

			set category = "Testing"

			src.name = name

		Load()
			set category = "Options"
			src.client.load()
