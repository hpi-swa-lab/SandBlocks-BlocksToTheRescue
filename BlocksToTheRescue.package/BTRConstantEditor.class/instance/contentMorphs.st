as yet unclassified
contentMorphs

	^ {(self content 
			ifNotNil: [self content asEditorMorph] 
			ifNil: [Morph new color: Color transparent; yourself])
				layoutFrame: (LayoutFrame fractions: (0@0 extent: 1@1));
				yourself}