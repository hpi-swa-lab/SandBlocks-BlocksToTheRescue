accessing
chooseLanguage
	DNMGameTexts
		install;
		language: (
			UIManager default 
					chooseFrom: (DNMGameTexts singleton supportedLanguages) 
					values: (DNMGameTexts singleton supportedLanguages) 
					title: 'Choose a language:').