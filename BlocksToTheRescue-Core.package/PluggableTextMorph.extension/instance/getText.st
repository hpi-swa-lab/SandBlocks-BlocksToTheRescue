*BlocksToTheRescue-Core
getText
	"Retrieve the current model text"

	| newText |
	getTextSelector ifNil: [^Text new].
	newText := model perform: getTextSelector.
	newText ifNil: [^Text new].
	newText := newText asText.
	^newText copy
		runs: newText runsForReplacement; "Copy the blockmodels when loading the text from the model"
		yourself