as yet unclassified
initializeSelectors

	self selectors reversed do: [:each | 
		self 
			addMorph: (TextMorph new 
								wrapFlag: false;
								backgroundColor: Color gray;
								yourself);
			addMorph: (StringMorph contents: each,': ')].