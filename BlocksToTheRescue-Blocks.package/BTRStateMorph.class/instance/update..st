updating
update: anAspect

	self halt.
	Transcript showln: 'state morph: ', anAspect.
	super update: anAspect.