level selection
adaptOverlay

	self overlay bounds: self levelMorph bounds.
	self levelWrapper addMorph: self overlay.
	self levelWrapper bounds: self levelWrapper submorphBounds.