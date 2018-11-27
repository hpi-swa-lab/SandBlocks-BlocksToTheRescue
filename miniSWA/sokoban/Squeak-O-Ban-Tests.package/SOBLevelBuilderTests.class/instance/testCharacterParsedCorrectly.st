as yet unclassified
testCharacterParsedCorrectly

	| level |
	level := SOBLevel fromString: self allCharacters.
	self 
		deny: (level at: 1@1) isFree;
		deny: (level at: 1@1) isOccupied;
		assert: (level at: 2@1) occupant isPlayer;
		assert: (level at: 3@1) occupant isPlayer;
		assert: (level at: 4@1) occupant isBox;
		assert: (level at: 5@1) occupant isBox;
		assert: (level at: 6@1) isFree;
		assert: (level at: 7@1) isFree.