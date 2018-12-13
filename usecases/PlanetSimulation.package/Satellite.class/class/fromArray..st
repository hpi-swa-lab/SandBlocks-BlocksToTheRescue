as yet unclassified
fromArray: anArray

	^ self new
		semimajoraxis: (anArray first * self astronomicalUnit log: 1.007);
		eccentricity: anArray second;
		period: anArray third * self year;
		size: anArray fourth * self cubeKilometers;
		color: anArray fifth;
		moons: anArray sixth;
		yourself