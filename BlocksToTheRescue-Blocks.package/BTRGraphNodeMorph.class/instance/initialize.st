as yet unclassified
initialize

	super initialize.
	self wrapFlag: true.
	getTextSelector := #code.
	setTextSelector := #code:.
	self useDefaultStyler.
	self initializeText.
	self acceptAction: [:newContents | self node changed: self node with: #accept].