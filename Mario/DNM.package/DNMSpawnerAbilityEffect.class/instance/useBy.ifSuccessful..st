using
useBy: anObject  ifSuccessful: aBlock
	|spawnObject spawnSuccess|
	spawnObject := DNMCollidingGameElementFactory new create: (self spawneeSymbol).
	spawnObject
		addVelocity: anObject velocity;
		faction: anObject faction.
	spawnSuccess := anObject requestNearbySpawn: spawnObject.
	(spawnSuccess = #spawnDenied) ifFalse: [aBlock value].