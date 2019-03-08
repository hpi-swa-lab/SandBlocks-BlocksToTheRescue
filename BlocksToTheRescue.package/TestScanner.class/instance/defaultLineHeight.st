accessing
defaultLineHeight

	| fontHeight  |
	fontHeight := (self text fontAt: 1 withStyle: self textStyle) height.
	^ fontHeight + self textStyle leading