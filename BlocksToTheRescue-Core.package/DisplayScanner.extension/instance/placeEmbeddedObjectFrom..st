*BlocksToTheRescue-Core
placeEmbeddedObjectFrom: aTextAttribute
	
	| anchoredMorphOrForm position |
	anchoredMorphOrForm := aTextAttribute anchoredMorph.
	anchoredMorphOrForm relativeTextAnchorPosition 
		ifNotNil: [^ self placeEmbeddedObjectRelative: anchoredMorphOrForm].
	
	position := (destX + aTextAttribute embeddedObjectPadding at: #left) @ (lineY + line baseline - (anchoredMorphOrForm height + font ascent / 2) floor).
	(anchoredMorphOrForm isMorph or: [anchoredMorphOrForm isPrimitiveCostume]) 
		ifTrue: [anchoredMorphOrForm position: position - morphicOffset] 
		ifFalse: [self displayEmbeddedForm: anchoredMorphOrForm at: position].
		
	destX := destX + anchoredMorphOrForm width + aTextAttribute horizontalPadding + kern.
	^ true