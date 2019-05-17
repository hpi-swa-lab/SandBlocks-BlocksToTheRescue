*BlocksToTheRescue-Core
readBlock
	
	| startOfToken initalPosition blockAttribute |
	startOfToken := mark.
	initalPosition := source instVarNamed: 'initialPositionOrNil'.
	(initalPosition isNil or: [initalPosition = 1])
		ifTrue: ["startOfToken := startOfToken - 1"]
		ifFalse: [startOfToken := startOfToken - initalPosition + 1].
	blockAttribute := (source contents asText attributesAt: startOfToken) 
		detect: [:each | each blockModel notNil]
		ifNone: [^ nil "Returning nil will signal #encodeBlock that there was a Parser error"].
		
	 ^ blockAttribute blockModel