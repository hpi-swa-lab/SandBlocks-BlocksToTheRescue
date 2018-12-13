as yet unclassified
angleAt: aTime

	^ (self semiminoraxis / self semimajoraxis * (2 * aTime * self areaPerTime / self semimajoraxis / self semiminoraxis) tan) arcTan radiansToDegrees