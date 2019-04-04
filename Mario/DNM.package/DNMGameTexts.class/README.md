A DNMGameTexts stores game texts in different languages. You can get a specific text in the current language using #textFor:. Before accessing, this object needs to fetch the language data from disk using #install. Use #language: to set the language. Languages are represented by symbols.

Instance Variables
	language:		<Symbol>
	textsByLanguage:		<Dictionary>

language
	- The currently selected language.

textsByLanguage
	- A Dictionary mapping languages (symbols) to a dictionary mapping text identifiers (symbols) to strings.