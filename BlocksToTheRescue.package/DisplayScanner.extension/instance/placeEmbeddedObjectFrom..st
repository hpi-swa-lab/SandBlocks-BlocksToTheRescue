*BlocksToTheRescue
placeEmbeddedObjectFrom: aTextAttribute
	
	| anchoredMorphOrForm position |
	anchoredMorphOrForm := aTextAttribute anchoredMorph.
	anchoredMorphOrForm relativeTextAnchorPosition 
		ifNotNil: [^ self placeEmbeddedObjectRelative: anchoredMorphOrForm].
	
	position := (destX + aTextAttribute embeddedObjectPadding at: #left) @ (lineY + (aTextAttribute embeddedObjectPadding at: #top)).
	(anchoredMorphOrForm isMorph or: [anchoredMorphOrForm isPrimitiveCostume]) 
		ifTrue: [anchoredMorphOrForm position: position - morphicOffset] 
		ifFalse: [self displayEmbeddedForm: anchoredMorphOrForm at: position].
		
	destX := destX + anchoredMorphOrForm width + aTextAttribute horizontalPadding + kern.
	^ true