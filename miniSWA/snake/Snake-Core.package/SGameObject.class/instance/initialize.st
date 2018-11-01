initialize-release
initialize 

	super initialize.
	self graphicalRepresentation: self createGraphicalRepresentation.
	self dirty: false.		"ensure the object gets drawn once"