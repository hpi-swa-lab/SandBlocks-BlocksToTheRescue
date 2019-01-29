as yet unclassified
toggleTool

	self okToChange ifTrue: [
		self showTool.
		contentsSymbol := #tool.
		self changed: #contents].
	