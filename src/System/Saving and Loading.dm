client
	proc
		load()
			var/mob/old = src.mob
			var/savefile/load
			load = new ("Players/[src.ckey]")
			load["mob"] >> src.mob
			load["x"] >> src.mob.x
			load["y"] >> src.mob.y
			load["z"] >> src.mob.z
			del(old)

		save()
			var/savefile/save
			save = new ("Players/[src.ckey]")
			save["mob"] << src.mob
			save["x"] << src.mob.x
			save["y"] << src.mob.y
			save["z"] << src.mob.z

mob/CombatMob/PC
	verb
		Save()
			set category = "Options"
			src.client.save()
