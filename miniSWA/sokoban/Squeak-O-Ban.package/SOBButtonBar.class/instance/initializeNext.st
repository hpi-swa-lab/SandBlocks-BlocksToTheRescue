initialize-release
initializeNext 

	self next: (SimpleButtonMorph new
		label: '>';
		actionSelector: #nextLevel;
		yourself).
	self addMorph: self next.