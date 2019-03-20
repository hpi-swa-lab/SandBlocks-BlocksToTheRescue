*ToolIconsPlus
isMethodRGBColorConstant: method

	| literal1 literal2 |
	literal1 := method literals first.
	literal2 := method literals second.
	
	^ (literal1 == #r:g:b:)
		and: [literal2 isVariableBinding
			and: [literal2 key == #Color]
			and: [literal2 value == Color]]