as yet unclassified
value

	^ (self submorphs 
		at: 1
		ifAbsent: [self setMorph: Morph new])
			copy
				position: 0@0;
				yourself