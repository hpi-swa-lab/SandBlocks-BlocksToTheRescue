*ToolIconsPlus-Strategies
methodFeatureReportableSlip: method
	<iconSymbol: #breakpoint>
	
	^ (method respondsTo: #hasReportableSlip)
		and: [method hasReportableSlip]