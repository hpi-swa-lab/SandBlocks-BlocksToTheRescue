*BlocksToTheRescue-Core
placeEmbeddedObjectRelative: anchoredMorphOrForm
	
	anchoredMorphOrForm position: 
			anchoredMorphOrForm relativeTextAnchorPosition +
			(anchoredMorphOrForm owner textBounds origin x @ (lineY - morphicOffset y)).
	^ true