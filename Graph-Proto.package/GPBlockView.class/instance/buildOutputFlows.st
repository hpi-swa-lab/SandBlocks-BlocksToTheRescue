building
buildOutputFlows

	self blockModel outputFlows doWithIndex:
		[:each :index | self buildOutputFlowPortViewFor: each at: index]

	