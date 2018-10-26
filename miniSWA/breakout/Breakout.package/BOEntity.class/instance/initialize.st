initialize-release
initialize

	super initialize.
	self
		extent: self defaultExtent;
		position: self defaultPosition;
		asMorphOn: self field.