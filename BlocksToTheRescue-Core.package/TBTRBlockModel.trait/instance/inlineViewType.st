accessing
inlineViewType

	^ self viewData 
		at: #inlineViewType 
		ifAbsent: [self inlineViewTypes first]