as yet unclassified
visitBlockView: aGPBlockView

	^ aGPBlockView blockModel outputFlows collect: [:each |
		self visit: each]