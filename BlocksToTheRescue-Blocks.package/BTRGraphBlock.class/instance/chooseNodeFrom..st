as yet unclassified
chooseNodeFrom: aListOfNodes

	^ UIManager default
		chooseFrom: aListOfNodes
		values: aListOfNodes
		title: 'Choose node'