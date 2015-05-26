/mob/CombatMob/PC
	var
		hair

	proc
		haircut(style, hairColor as color)
			var/icon/newHair

			src << color

			switch(style)
				if(HAIRSTYLE.GOKU)
					newHair = 'hair{goku}.dmi'
				if(HAIRSTYLE.VEGETA)
					newHair = 'hair{vegeta}.dmi'

			newHair += hairColor
			src.overlays -= hair
			hair = newHair
			src.overlays += hair

// Using this global as an enumeration
var/HAIRSTYLE_ENUM/HAIRSTYLE
HAIRSTYLE_ENUM
	var
		const
			BALD = 0
			VEGETA = 1
			GOKU = 2