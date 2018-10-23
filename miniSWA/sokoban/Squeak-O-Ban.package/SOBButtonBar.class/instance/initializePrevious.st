initialize-release
initializePrevious 

	self previous: (SimpleButtonMorph new
		label: '<';
		actionSelector: #previousLevel).
	self addMorph: self previous.