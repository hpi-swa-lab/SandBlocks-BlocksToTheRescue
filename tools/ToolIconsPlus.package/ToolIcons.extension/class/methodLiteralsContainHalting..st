*ToolIconsPlus-Strategies
methodLiteralsContainHalting: literals
	<iconSymbol: #breakpoint>
	
	^ literals includesAnyOf: #(halt halt: haltIfNil haltIf: haltOnce haltOnce: haltOnCount: halt:onCount: break)