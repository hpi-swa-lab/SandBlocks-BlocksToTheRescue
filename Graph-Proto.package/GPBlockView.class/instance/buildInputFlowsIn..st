building
buildInputFlowsIn: aMorph

	self blockModel inputFlows doWithIndex:
		[:each :index | self buildInputFlowPortViewFor: each at: index in: aMorph].

	