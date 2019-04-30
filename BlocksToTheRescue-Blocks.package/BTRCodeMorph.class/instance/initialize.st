as yet unclassified
initialize
	
	| extentToUse |
	extentToUse := (self model viewData 
		at: #inlineViewProportions 
		ifAbsent: [self defaultProportions]) * self fontSize.
	super initialize.
	self wrapFlag: true.
	getTextSelector := #code.
	setTextSelector := #code:.
	self extent: extentToUse.
	self useDefaultStyler.
	self initializeText.
	self acceptAction: [:newContents | self model changed: #accept].