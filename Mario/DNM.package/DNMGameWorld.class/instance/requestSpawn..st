GameMorphCreation
requestSpawn: aGameObject 
	(self physics isIntersectingWithAnyObject: aGameObject) 
		ifTrue:  [^#spawnDenied]
		ifFalse: [^self insertIntoGameWorld: aGameObject].