/mob/Guest
	proc
		newCharacter()
			src.loc = locate(29,10,2)

		// event raised when a creationMob is clicked as guest
		// sends in the newly created PC with the proper race
		pickedRace(mob/CombatMob/PC/newPC)
			var/list/needsSkin = list(RACE.SAIYAN, RACE.HUMAN, RACE.ANDROID)
			if(newPC.race in needsSkin)
				src.skinSelect(newPC)

			// Cleanup old screen things first
			/**
			 * NOTE: This WILL DELETE ALL ITEMS IN SCREEN
			 * 		 A guest should never have a HUD so this SHOULD be safe
			 */
			for(var/T in usr.client.screen)
				del(T)
			newPC.screen_loc = "10,10"
			usr.client.screen += newPC

		skinSelect(mob/CombatMob/PC/newPC)


/mob/CombatMob/PC
	proc
		setIcon(skin)
			var/icon
			switch(skin)
				if(ICONTYPE.HUMAN_DARK) icon = 'player{human-brown}.dmi'
				if(ICONTYPE.HUMAN_TAN) icon = 'player{human-tan}.dmi'
				if(ICONTYPE.HUMAN_PALE) icon = 'player{human-pale}.dmi'
				if(ICONTYPE.ICER) icon = 'player{icer-normal}.dmi'
				if(ICONTYPE.NAMEK) icon = 'player{namek-normal}.dmi'
			src.icon = icon