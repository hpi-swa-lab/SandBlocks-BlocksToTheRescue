*IconsForMessages
isMethodRGBColorConstant: aSymbol

	| method literal1 literal2 |
	method := self theMetaClass methodDict at: aSymbol ifAbsent: [^ false].
	literal1 := method literals first.
	literal2 := method literals second.
	
	^ (literal1 == #r:g:b:)
		and: [literal2 isVariableBinding
			and: [literal2 key == #Color]
			and: [literal2 value == Color]]