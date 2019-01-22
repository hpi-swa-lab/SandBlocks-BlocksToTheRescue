as yet unclassified
generateStatementCode: aGPBlockView

	^ aGPBlockView code, '.', (self visit: aGPBlockView blockModel outputFlows first)