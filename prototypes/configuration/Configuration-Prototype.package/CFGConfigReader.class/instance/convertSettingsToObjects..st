settings reading
convertSettingsToObjects: anObject

	anObject isString
		ifTrue: [^ Compiler evaluate: anObject].
		
	anObject isCollection
		ifTrue: [^ anObject collect: [ :each | self convertSettingsToObjects: each]].
	
	^ anObject ifNotNil: [anObject key -> (self convertSettingsToObjects: anObject value)]