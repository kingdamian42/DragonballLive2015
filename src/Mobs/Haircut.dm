/mob/CombatMob/PC
	var
		hair

	proc
		haircut(style, red as num, green as num, blue as num)
			var/icon
			switch(style)
				if(HAIRSTYLE.GOKU)
					icon = 'hair{goku}.dmi'
				if(HAIRSTYLE.VEGETA)
					icon = 'hair{vegeta}.dmi'

			var/hairColor = rgb(red, green, blue)
			icon += hairColor
			src.overlays -= hair
			hair = icon
			src.overlays += hair

// Using this global as an enumeration
var/HAIRSTYLE_ENUM/HAIRSTYLE
HAIRSTYLE_ENUM
	var
		const
			BALD = 0
			VEGETA = 1
			GOKU = 2