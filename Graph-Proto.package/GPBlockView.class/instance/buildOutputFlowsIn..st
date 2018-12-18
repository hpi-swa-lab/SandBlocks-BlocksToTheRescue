building
buildOutputFlowsIn: aMorph

	self blockModel outputFlows doWithIndex:
		[:each :index | self buildOutputFlowPortViewFor: each at: index in: aMorph]

	