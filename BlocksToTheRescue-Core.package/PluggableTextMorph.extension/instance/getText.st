*BlocksToTheRescue-Core
getText
	"Retrieve the current model text"

	| newText |
	getTextSelector ifNil: [^Text new].
	newText := (model perform: getTextSelector) asText.
	newText ifNil: [^Text new].
	^newText copy
		runs: newText runsForReplacement;
		yourself