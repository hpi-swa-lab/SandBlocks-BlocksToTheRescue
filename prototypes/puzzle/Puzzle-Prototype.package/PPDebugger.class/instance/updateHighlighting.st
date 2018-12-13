as yet unclassified
updateHighlighting 

	self codeWalker isFinished
		ifFalse: [self updateHighlighter]
		ifTrue: [self highlighter abandon].