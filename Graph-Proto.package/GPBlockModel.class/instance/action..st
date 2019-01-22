configuration
action: aBlock

	action := aBlock.
	self view code: (self codeStringFor: aBlock decompile statements first).