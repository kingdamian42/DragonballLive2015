/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 9		// show up to 8 tiles outward from center (19x19 view)
	mob = /mob/Guest // set this as placeholder until we decide what type of mob it is

// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8