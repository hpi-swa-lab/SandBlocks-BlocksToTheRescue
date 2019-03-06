as yet unclassified
install: aPane

	| aWindow codePane boundsToUse |
	(aWindow := self containingWindow) ifNil: [self error: 'where''s that window?'].
	codePane := self codeMorph ifNil: [self error: 'no code pane'].
	boundsToUse := (codePane bounds origin- (1@1)) corner: (codePane owner bounds corner " (1@1").
	aWindow replacePane: codePane with: aPane.
	aPane vResizing: #spaceFill; hResizing: #spaceFill; borderWidth: 0.
	aPane bounds: boundsToUse.
	aPane owner clipSubmorphs: false.
	self codeMorph: aPane.

	self contentsChanged