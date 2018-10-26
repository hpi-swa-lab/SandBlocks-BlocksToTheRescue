instance creation
newOn: aBOGameField

	^ self basicNew
		initializeOn: aBOGameField;
		asMorphOn: aBOGameField;
		yourself