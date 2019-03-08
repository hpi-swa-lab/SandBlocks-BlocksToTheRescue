*BlocksToTheRescue
readBlock

	 ^ ((source contents asText attributesAt: mark) detect: [:each | each anchoredMorph notNil] ifNone: [^ nil "will only happen when we get a string, which should never happen during relevant compile steps"]) anchoredMorph value .