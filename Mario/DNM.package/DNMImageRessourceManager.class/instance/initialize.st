initialization
initialize 
	super initialize.
	filenamesBySymbol := Dictionary new.
	ressourcesBySymbol := Dictionary new.
	self initializeFilenames.