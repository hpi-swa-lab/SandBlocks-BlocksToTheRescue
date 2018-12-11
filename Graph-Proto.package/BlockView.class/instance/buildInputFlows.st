building
buildInputFlows

	self blockModel inputFlows doWithIndex: [:each :index |
		self buildInputFlowPortViewFor: each at: index]

	