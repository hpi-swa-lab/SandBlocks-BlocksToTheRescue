event handling
keyStroke: aKeyboardEvent

	(aKeyboardEvent controlKeyPressed or: [aKeyboardEvent commandKeyPressed]) ifTrue:
		[self perform: (self cmdActionMap at: aKeyboardEvent keyCharacter ifAbsent: [#yourself])].