as yet unclassified
solarSystem

	| sun |
	sun := self new
		size: 100 * self cubeKilometers; "too small"
		color: (Color fromString: '#FDB813').
	Satellite planets do: [:each | sun addMorph: (Satellite fromArray: each)].
	^ sun