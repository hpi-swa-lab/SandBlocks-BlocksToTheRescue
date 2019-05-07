as yet unclassified
alloy: aContext and: otherContext

	^ self new
		arguments: 
			((1 to: aContext numTemps) collect: [ :each | aContext tempAt: each]), 
			((1 to: otherContext numTemps) collect: [ :each | otherContext tempAt: each]);
		tempNames: aContext tempNames, otherContext tempNames