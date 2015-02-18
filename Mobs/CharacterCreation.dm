/mob/CombatMob/PC
	proc
		setIcon(var/skinNum)
			var/icon
			switch(skinNum)
				if(0) icon = 'player{human-brown}.dmi'
				if(1) icon = 'player{human-tan}.dmi'
				if(2) icon = 'player{human-pale}.dmi'
				if(3) icon = 'player{icer-normal}.dmi'
				if(4) icon = 'player{namek-normal}.dmi'
			src.icon = icon