/mob/CreationMobs

	var/raceType

	Click()
		// Figure out what race was clicked, and start new PC for char creation
		var/mob/CombatMob/PC/newChar
		switch(raceType)
			if(RACE.SAIYAN)
				newChar = new /mob/CombatMob/PC/Saiyan()
			if(RACE.HUMAN)
				newChar = new /mob/CombatMob/PC/Human()
			if(RACE.ANDROID)
				newChar = new /mob/CombatMob/PC/Android()
			if(RACE.ICER)
				newChar = new /mob/CombatMob/PC/Icer()
			if(RACE.NAMEK)
				newChar = new /mob/CombatMob/PC/Namek()
			if(RACE.HALFSAIYAN)
				newChar = new /mob/CombatMob/PC/HalfSaiyan()

		var/mob/Guest/you = usr
		you.pickedRace(newChar)

	CreateSaiyan
		icon = 'player{human-tan}.dmi'
		raceType = RACE.SAIYAN

		New()
			..()
			overlays += 'equips{shirt-blue}.dmi'
			overlays += 'equips{gi-orange}.dmi'
			overlays += 'equips{belt-blue}.dmi'
			overlays += 'hair{goku-ssj1}.dmi'

	CreateHuman
		icon = 'player{human-pale}.dmi'
		raceType = RACE.HUMAN

		New()
			..()
			overlays += 'objects{tri-eye}.dmi'
			overlays += 'equips{shirt-white}.dmi'
			overlays += 'equips{gi-black}.dmi' + rgb(20,100,20)
			overlays += 'equips{belt-red}.dmi'

	CreateHalfSaiyan
		icon = 'player{human-tan}.dmi'
		raceType = RACE.HALFSAIYAN

		New()
			..()
			overlays += 'equips{shirt-white}.dmi'
			overlays += 'equips{gi-purple}.dmi'
			overlays += 'equips{belt-red}.dmi'
			overlays += 'hair{goku}.dmi'

	CreateAndroid
		icon = 'player{human-pale}.dmi'
		raceType = RACE.ANDROID

		New()
			..()
			overlays += 'equips{shirt-blue}.dmi'
			overlays += 'hair{vegeta}.dmi'
			overlays += 'objects{absorb-shield}.dmi'

	CreateIcer
		icon = 'player{icer-normal}.dmi'
		raceType = RACE.ICER

	CreateNamek
		icon = 'player{namek-normal}.dmi'
		raceType = RACE.NAMEK

		New()
			..()
			overlays += 'equips{gi-purple}.dmi'
			overlays += 'equips{belt-red}.dmi'
