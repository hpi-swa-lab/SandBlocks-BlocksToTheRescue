initialization
initializeText

	self textMorph: (TextMorph new 
									contents: self code; 
									yourself).
	self addMorph: self textMorph