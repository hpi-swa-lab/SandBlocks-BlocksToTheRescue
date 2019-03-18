*IconsForMessages-Strategies
methodFeatureBreakpoint: method
	<iconSymbol: #breakpoint>
	
	^ (method respondsTo: #hasBreakpoint)
		and: [method hasBreakpoint]