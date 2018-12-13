as yet unclassified
currentRadius

	^ self semilatusrectum / (self eccentricity * self currentRotation degreeCos + 1)