as yet unclassified
keyStroke: aKeyboardEvent

	self halt.
	aKeyboardEvent controlKeyPressed ifTrue:
		[self perform: (self cmdActionMap at: aKeyboardEvent keyValue ifAbsent: [#yourself])].