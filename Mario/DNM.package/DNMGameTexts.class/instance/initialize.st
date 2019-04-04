initialization
initialize
	textsByLanguage := Dictionary new.
	self 
		install;
		language: (self supportedLanguages first).