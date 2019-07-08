accessing
removeAdjustmentRow

	self adjustmentRow ifNotNil: [self adjustmentRow abandon].
	self extent: self defaultTableExtent.
	self blockModel viewDataAt: #hasAdjustmentRow put: false.