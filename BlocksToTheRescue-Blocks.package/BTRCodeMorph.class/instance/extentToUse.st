as yet unclassified
extentToUse

	^ (self model viewData 
		at: #inlineViewProportions 
		ifAbsent: [self defaultProportions]) * self fontSize.