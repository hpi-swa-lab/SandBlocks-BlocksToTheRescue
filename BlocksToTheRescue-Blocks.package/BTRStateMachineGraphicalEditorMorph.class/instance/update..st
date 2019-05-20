updating
update: anAspect

	anAspect = #viewData ifTrue: [self writeViewData].
	super update: anAspect.