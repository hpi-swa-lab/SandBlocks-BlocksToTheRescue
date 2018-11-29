as yet unclassified
highlight: aMorph during: aBlock

	| oldColor |
	oldColor := aMorph color.
	aMorph color: self highlightColor.
	PPDebugStep signal: 'CodeWalker step'.
	aBlock value.
	aMorph color: oldColor.