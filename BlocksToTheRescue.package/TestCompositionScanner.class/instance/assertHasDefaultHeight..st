testing
assertHasDefaultHeight: line 

	| fontHeight textStyle |
	textStyle := TextStyle default.
	fontHeight := (self text fontAt: 1 withStyle: textStyle) height.
	self assert: fontHeight + textStyle leading equals: line lineHeight.	