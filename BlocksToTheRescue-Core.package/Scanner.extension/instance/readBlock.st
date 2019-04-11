*BlocksToTheRescue-Core
readBlock
	
	| startOfToken initalPosition |
	startOfToken := mark.
	initalPosition := source instVarNamed: 'initialPositionOrNil'. 
	(initalPosition isNil or: [initalPosition = 1])
		ifTrue: ["startOfToken := startOfToken - 1"]
		ifFalse: [startOfToken := startOfToken - initalPosition + 1].
	 ^ ((source contents asText attributesAt: startOfToken) 
		detect: [:each | each blockModel notNil]
		ifNone: [^ self expected: 'BlockModel'])
			blockModel