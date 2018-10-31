as yet unclassified
testCreation

	| gameFrame |
	gameFrame := SOBGameFrame new.
	self 
		deny: gameFrame levelMorph isNil;
		deny: gameFrame informationMorph isNil;
		deny: gameFrame buttonBar isNil.