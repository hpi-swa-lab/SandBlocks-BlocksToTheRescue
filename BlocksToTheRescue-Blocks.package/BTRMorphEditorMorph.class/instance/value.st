accessing
value

	^ (self viewPort submorphs 
		at: 1
		ifAbsent: [self setMorph: Morph new])