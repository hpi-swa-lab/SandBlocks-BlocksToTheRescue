as yet unclassified
initialize
	
	| extentToUse |
	extentToUse := self extentToUse.
	super initialize.
	self wrapFlag: true.
	getTextSelector := #code.
	setTextSelector := #code:.
	self extent: extentToUse.
	self initializeStyler.
	self initializeText.
	self acceptAction: [:newContents | self model changed: #accept].