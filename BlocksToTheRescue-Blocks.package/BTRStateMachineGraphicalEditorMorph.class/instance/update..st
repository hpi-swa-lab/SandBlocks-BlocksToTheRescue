updating
update: anAspect

	(anAspect = #viewData and: [self hasProperty: #autosave]) ifTrue: [^ self writeViewData].
	super update: anAspect.