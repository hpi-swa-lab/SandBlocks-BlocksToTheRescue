interface-views
updateView

	self removeAllMorphs.
	self wrappedBlock ifNotNil: [
		self addMorph: self wrappedBlock inlineView.
		self extent: self submorphs first extent].