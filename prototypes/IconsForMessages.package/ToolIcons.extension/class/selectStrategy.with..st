*IconsForMessages
selectStrategy: pragmaSymbol with: anObject
self shouldNotImplement.
	(Pragma allNamed: pragmaSymbol in: self class)
		do: [:pragma |
			| result |
			result := self perform: pragma method selector with: anObject.
			(pragma method pragmaAt: #iconSymbol:)
				ifNil: [result ifNotNil: [:iconSymbol | ^ iconSymbol]]
				ifNotNil: [:iconSymbol | result ifTrue: [^ iconSymbol]]].
	^ nil