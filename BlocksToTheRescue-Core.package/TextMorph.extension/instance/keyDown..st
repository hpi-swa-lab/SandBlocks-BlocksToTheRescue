*BlocksToTheRescue-Core
keyDown: evt

	Smalltalk platformName = 'unix'
		ifFalse: [^ self].
	(evt keyCharacter = Character tab and: [evt shiftPressed]) 
		ifTrue: [self keyStroke: evt].