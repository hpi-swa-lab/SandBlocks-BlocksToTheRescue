initialization
moons: aDictionary

	aDictionary do: [:each | self addMorph: (Satellite fromArray: each value)].