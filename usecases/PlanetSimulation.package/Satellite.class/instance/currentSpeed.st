as yet unclassified
currentSpeed

	^ (4 * Float pi * Float pi * (self semimajoraxis raisedTo: 3) / (self period raisedTo: 2) * (2 / self currentRadius - (1 / self semimajoraxis)))sqrt