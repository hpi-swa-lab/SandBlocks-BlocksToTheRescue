*IconsForMessages
doesNotUnderstand: aMessage

	| redirectedMethodSelector |
	redirectedMethodSelector := (aMessage selector asString, 'Icon') asSymbol.

	^ (self respondsTo: redirectedMethodSelector)
		ifTrue: [self perform: redirectedMethodSelector]
		ifFalse: [super doesNotUnderstand: aMessage]