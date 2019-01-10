as yet unclassified
generateIfCode: aGPBlockView

	^ '(', aGPBlockView code, ')
		ifTrue: [', (self visit: aGPBlockView blockModel outputFlows second), ']
		ifFalse: [', (self visit: aGPBlockView blockModel outputFlows first), ']'