building
setLayoutParameters

	| maximumFlowPortsHeight maximumDataPortsHeight |
	
	maximumFlowPortsHeight := self inputFlowContainer height max: self outputFlowContainer height.
	maximumDataPortsHeight := self inputDataContainer height max: self outputDataContainer height.
	
	self layoutPolicy
		grid: {
			{#name . #name . #name}. 
			{#flowIn . #empty . #flowOut}.
			{#dataIn . #empty . #dataOut}
		};
		columnSize: {10 . #auto . 10};
		rowSize: {20 . maximumFlowPortsHeight . maximumDataPortsHeight}.
	
