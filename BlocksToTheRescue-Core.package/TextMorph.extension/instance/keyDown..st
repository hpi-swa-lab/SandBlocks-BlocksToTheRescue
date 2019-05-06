*BlocksToTheRescue-Core
keyDown: evt

	super keyDown: evt.
	(#('unix') includes: Smalltalk platformName) ifTrue: [
		(evt keyCharacter = Character tab and: [evt shiftPressed]) 
		ifTrue: [self keyStroke: evt]].