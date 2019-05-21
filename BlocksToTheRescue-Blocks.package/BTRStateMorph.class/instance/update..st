updating
update: anAspect

	anAspect = #name ifTrue: [
		self name: self state name.
		self changed: #viewData].
	super update: anAspect.