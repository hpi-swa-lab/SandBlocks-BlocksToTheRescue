*IconsForMessages
tryFindIcon: aSymbol

	^ (self respondsTo: aSymbol)
		ifTrue: [self perform: aSymbol]
		ifFalse: [ | alternativeSelector |
			alternativeSelector := (aSymbol asString, 'Icon') asSymbol.
			(self respondsTo: alternativeSelector)
				ifTrue: [self perform: alternativeSelector]
				ifFalse: [nil]]