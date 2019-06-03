*BlocksToTheRescue-Core
replaceFrom: start to: stop with: aText

	| txt newString newRuns |
	txt := aText asText.	"might be a string"
	"First copy both string and runs, because copying runs might mean copying embedded objects which can have side effects.
	During these side effects, we want this Text object to be in a coherent state. So assign both changes at once."
	newString := string copyReplaceFrom: start to: stop with: txt string.
	newRuns := runs copyReplaceFrom: start to: stop with: txt runsForReplacement.
	
	"Now do the actual change in one step."
	string := newString.
	runs := newRuns.