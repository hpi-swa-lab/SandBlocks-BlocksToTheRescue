interface-views
inlineView

	self removeAllMorphs.
	self initializeText.
	self initializeResult.
	self extent: (self textMorph width max: self resultTextMorph width) @ (self textMorph height + self resultTextMorph height).
	^ self