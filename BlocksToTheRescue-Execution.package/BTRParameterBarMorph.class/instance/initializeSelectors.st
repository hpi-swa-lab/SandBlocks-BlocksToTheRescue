initialization
initializeSelectors

	self removeAllMorphs.
	self selectors reversed do: [:each | 
		self 
			addMorph: (TextMorph new 
								wrapFlag: false;
								backgroundColor: Color white;
								yourself);
			addMorph: (StringMorph contents: each,': ')].