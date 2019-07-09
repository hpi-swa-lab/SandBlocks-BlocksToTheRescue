accessing
addAdjustmentRow

	self hasAdjustmentRow
		ifTrue: [^ false].
	self
		initializeExpandMorphs;
		extent: self expandedExtent;
		addMorphBack: self adjustmentRow.
	self blockModel viewDataAt: #hasAdjustmentRow put: true.