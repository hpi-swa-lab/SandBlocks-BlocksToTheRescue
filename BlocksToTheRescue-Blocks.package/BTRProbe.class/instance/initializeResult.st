initialization
initializeResult

	self resultTextMorph: PluggableTextMorphPlus new.
	self addMorph: self resultTextMorph.
	self resultTextMorph y: self textMorph bottom.
	self oldResult ifNotNilDo: [:text | self updatePreviewWith: text]