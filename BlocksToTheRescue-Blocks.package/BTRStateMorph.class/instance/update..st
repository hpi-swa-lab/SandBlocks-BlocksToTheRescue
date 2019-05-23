updating
update: anAspect

	anAspect = #transitions ifTrue: [self updateStyle].
	anAspect = #name ifTrue: [
		self name: self state name.
		self changed: #viewData].
	super update: anAspect.