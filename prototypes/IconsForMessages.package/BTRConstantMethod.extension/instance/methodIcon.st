*IconsForMessages
methodIcon

	^ (self value respondsTo: #asIcon) 
		ifTrue: [self value asIcon]
		ifFalse: [#constantMethod]