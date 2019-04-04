shutting down
delete
	super delete.
	self physics removeEverything.
	DNMSound singleton shutDownSoundsRequestedFrom: self.