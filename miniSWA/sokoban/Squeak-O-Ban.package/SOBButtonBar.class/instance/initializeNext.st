initialize-release
initializeNext 

	self next: (SimpleButtonMorph new
		label: '>';
		actionSelector: #nextLevel).
	self addMorph: self next.