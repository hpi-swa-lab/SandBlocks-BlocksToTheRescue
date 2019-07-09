testing
hasAdjustmentRow

	^ (self blockModel viewData at: #hasAdjustmentRow ifAbsent: [false]) 
		and: [self adjustmentRow notNil]