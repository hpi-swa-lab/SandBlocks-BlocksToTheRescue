initialize-release
initialize

	horcher := Horcher new.
	self addDependent: horcher.
	super initialize.