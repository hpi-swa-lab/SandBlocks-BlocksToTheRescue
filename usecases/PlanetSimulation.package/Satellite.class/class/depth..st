as yet unclassified
depth: aNumber

	| root current |
	root := CelestialBody new
		position: 400 @ 400;
		size: 80;
		color: Color random.
	current := root.
	aNumber to: 1 by: -1 do: [:index | | sat |
		sat := Satellite new
			semimajoraxis: (2.6 raisedTo: index) * 10 / aNumber;
			period: 100 atRandom / 100 + (2 raisedTo: index);
			eccentricity: 0.0;
			extent: (2 raisedTo:index) asPoint * 5 / aNumber;
			color: Color random.
		current addMorph: sat.
		current := sat.
		].
	^ root 