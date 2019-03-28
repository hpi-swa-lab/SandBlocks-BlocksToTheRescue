as yet unclassified
initialize

	super initialize.
	self color: Color white.
	self wrapFlag: true.
	getTextSelector := #code.
	setTextSelector := #code:.
	self useDefaultStyler.
	self initializeText.