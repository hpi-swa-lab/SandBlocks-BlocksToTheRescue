accessing
contentMorphs

	^ {	FrameAdornmentMorph new
			addDependent: self;
			color: Color orange;
			condition: [self hasUnacceptedEdits];
			yourself.
		self buildSignatureBar.
		(self content 
			ifNotNil: [self content editorView] 
			ifNil: [Morph new color: Color transparent; yourself])
				layoutFrame: (LayoutFrame fractions: (0@0 extent: 1@1)offsets: (0@ self signatureBarHeight corner: 0@0));
				yourself.}