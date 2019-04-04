accessing
language: aLanguageSymbol
	(self supportedLanguages includes: aLanguageSymbol) ifFalse: [self error: 'Language not supported'].
	language := aLanguageSymbol.
	
	