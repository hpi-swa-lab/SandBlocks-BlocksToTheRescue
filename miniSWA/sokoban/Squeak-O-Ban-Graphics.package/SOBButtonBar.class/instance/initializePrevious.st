initialize-release
initializePrevious 

	self previous: (SimpleButtonMorph new
		label: '<';
		actionSelector: #previousLevel;
		yourself).
	self addMorph: self previous.