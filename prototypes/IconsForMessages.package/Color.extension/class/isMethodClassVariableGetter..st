*IconsForMessages
isMethodClassVariableGetter: aSymbol

	| method literal1 classVariableName |
	method := self theMetaClass methodDict at: aSymbol ifAbsent: [^ false].
	literal1 := method literals first.
	classVariableName := aSymbol asString asCamelCase asSymbol.
	
	^ (method literals size = 3)
		and: [literal1 isVariableBinding
			and: [literal1 key == classVariableName]
			and: [self classPool includesKey: literal1 key]
			and: [literal1 value class == self]]