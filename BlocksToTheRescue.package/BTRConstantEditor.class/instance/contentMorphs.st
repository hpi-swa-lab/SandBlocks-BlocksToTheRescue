accessing
contentMorphs

	^ {FrameAdornmentMorph new
			addDependent: self;
			color: Color orange;
			condition: [self shouldSaveEdits]
			yourself.
		(self content 
			ifNotNil: [self content editorMorphSpec construct] 
			ifNil: [Morph new color: Color transparent; yourself])
			layoutFrame: (LayoutFrame fractions: (0@0 extent: 1@1));
			yourself.}