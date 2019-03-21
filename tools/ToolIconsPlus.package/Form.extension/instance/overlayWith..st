*ToolIconsPlus
overlayWith: aForm

	| newForm |
	newForm := self copy.
	aForm displayOn: newForm at: 0@0 rule: Form blend.
	^ newForm 