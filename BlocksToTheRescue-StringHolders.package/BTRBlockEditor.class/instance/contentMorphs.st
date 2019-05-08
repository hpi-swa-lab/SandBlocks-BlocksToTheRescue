accessing
contentMorphs

	^ {	FrameAdornmentMorph new
			addDependent: self;
			color: Color orange;
			condition: [self hasUnacceptedEdits];
			yourself.
		self buildSignatureBar.
		(self content 
			ifNotNil: [:content | content editorView
					in: [:view | self addDependent: view]; "I depend on the editor view, so it can tell me when it has unaccepted edits and stuff."
					"addDependent: content;" "Commented out for now, we might still need this. Results in cyclic dependencies atm."
					yourself] 
			ifNil: [Morph new color: Color transparent; yourself])
				layoutFrame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 1) offsets: (0 @ self signatureBarHeight corner: 0 @ 0));
				yourself.}