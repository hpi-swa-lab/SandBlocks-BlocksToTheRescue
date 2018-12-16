as yet unclassified
trueAnomaly

	| E |
	E := self eccentricAnomaly.
	^ (1 - (self eccentricity raisedTo: 2)) sqrt * (E sin) arcTan: (E cos - self eccentricity)