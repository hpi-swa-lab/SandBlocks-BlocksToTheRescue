as yet unclassified
fromArray: anArray

	^ self new
		semimajoraxis: (anArray first * self astronomicalUnit + 1 log: 1.007);
		eccentricity: anArray second;
		period: anArray third * self year;
		size: anArray fourth * self megameters;
		color: anArray fifth;
		moons: anArray sixth;
		yourself