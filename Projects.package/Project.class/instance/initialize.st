as yet unclassified
initialize
	parentProject := CurrentProject.
	
	thumbnail := Form extent: 320@200 depth: Display depth.
	 
	" the root project (the only project with a nil parent) binds to the existing world. All other projects create a new world."
	
	parentProject 
		ifNil:[ world := UIManager default currentWorld ]
		ifNotNil:[	
			world := WorldMorph new. 
			world addHand: HandMorph new.
			world viewBox: Display boundingBox.
			world color: WorldMorph defaultWorldColor.
		].