*BlocksToTheRescue-Core
contents
	| ans runs |
	currentRun > 0 ifTrue:[
		attributeValues nextPut: currentAttributes.
		attributeRuns nextPut: currentRun.
		currentRun := 0].
	runs := RunArray runs: attributeRuns contents values: attributeValues contents.
	ans := Text string: characters contents string runs: (self mergeRuns: runs and: characters contents runs).
	^ans