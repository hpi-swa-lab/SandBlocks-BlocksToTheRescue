updating
update

	self updateRowMorphs.
	(self blockModel viewData at: #hasAdjustmentRow ifAbsent: [false])
		ifTrue: [self updateAdjustmentRow].