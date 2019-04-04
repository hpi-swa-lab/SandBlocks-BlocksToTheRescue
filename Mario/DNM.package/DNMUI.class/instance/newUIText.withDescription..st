access
newUIText: aText withDescription: descriptionSymbol
	^(self newUIText: aText) setBalloonText: (DNMGameTexts singleton textFor: descriptionSymbol)