as yet unclassified
on: anEStatesSet usingGrammar: anEGrammar source: aText 

	^ self new
		grammar: anEGrammar;
		source: aText;
		buildNodesListFrom: anEStatesSet;
		yourself