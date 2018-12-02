as yet unclassified
proceedDebugging

	[self codeWalker isFinished] whileFalse:
		[self codeWalker step.
		self updateHighlighting].