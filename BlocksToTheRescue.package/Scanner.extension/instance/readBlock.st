*BlocksToTheRescue
readBlock
	
	| startOfToken initalPosition |
	startOfToken := mark.
	initalPosition := source instVarNamed: 'initialPositionOrNil'.
	initalPosition ifNotNil: [startOfToken := startOfToken - initalPosition].  
	 ^ ((source contents asText attributesAt: startOfToken) detect: [:each | each anchoredMorph notNil] ifNone: [self haltOnce. ^ nil]) anchoredMorph value .