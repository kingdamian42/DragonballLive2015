mob/Guest/Login()

	src.loc = locate(10,10,2)
	/**
	 * Was for testing, delete when character creation is complete
	world << "Logged in: [src]"

	// Default race as saiyan for testing
	var/mob/CombatMob/PC/Guy = new /mob/CombatMob/PC/Saiyan()
	Guy.loc = locate(4,4,1) // Set slightly offset
	src.client.mob = Guy // Set usr to be newly created PC
	Guy.name = src.name
	Guy.setIcon(rand(0,4))
	*/

mob/Guest
	Move()
		return