initialization
initialize

	super initialize.
	self initializeTable.
	(self blockModel viewData at: #hasAdjustmentRow ifAbsent: [false])
		ifTrue: [self addAdjustmentRow].