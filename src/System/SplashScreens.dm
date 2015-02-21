turf/SplashScreens
	Splash1
		icon = 'Dragonball Live Splash.png'

	SplashNew1
		layer = MOB_LAYER
		mouse_opacity = 2
		Click()
			if(istype(usr, /mob/Guest))
				var/mob/Guest/guest = usr
				guest.newCharacter()

	SplashLoad1
		layer = MOB_LAYER
		mouse_opacity = 2
		Click()
			if(istype(usr, /mob/Guest))
				usr.client.load()