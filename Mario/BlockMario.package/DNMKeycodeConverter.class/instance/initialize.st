initialization
initialize	
	|os|
	super initialize.
	keyValueBySymbol := Dictionary new.
	os := Smalltalk platformName.
	(os  = 'Mac OS') ifTrue: [self initializeMac].
	(os = 'Win32') ifTrue: [self initializeWin].
	(os = 'unix') ifTrue: [self initializeUnix].
	