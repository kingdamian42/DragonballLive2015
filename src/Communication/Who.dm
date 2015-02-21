mob/CombatMob/PC
	verb
		who()
			set category = "Options"
			set name = "Who\'s Online"

			src << "<span class = whoTitle>Online Players:</span>"

			var/count = 0
			for(var/mob/CombatMob/PC/player in world)
				src << "<span class = whoPlayerName>[player.name]</span> <span class = whoPlayerKey>([player.key])</span>"
				count ++
			src << "<span class = whoTitle>Total Online:</span> <b>[count]</b>"