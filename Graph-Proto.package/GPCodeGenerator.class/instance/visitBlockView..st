as yet unclassified
visitBlockView: aGPBlockView

	^ aGPBlockView blockModel outputFlows size = 2
		ifTrue: [self generateIfCode: aGPBlockView]
		ifFalse: [self generateStatementCode: aGPBlockView]