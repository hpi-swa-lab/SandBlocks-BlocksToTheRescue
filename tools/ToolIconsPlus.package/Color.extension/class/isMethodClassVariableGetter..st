*ToolIconsPlus
isMethodClassVariableGetter: method

	| literal1 classVariableName |
	literal1 := method literals first.
	classVariableName := method selector asString asCamelCase asSymbol.
	
	^ (method literals size = 3)
		and: [literal1 isVariableBinding
			and: [literal1 key == classVariableName]
			and: [self classPool includesKey: literal1 key]
			and: [literal1 value class == self]]
		and: [(self perform: method selector) isColor]