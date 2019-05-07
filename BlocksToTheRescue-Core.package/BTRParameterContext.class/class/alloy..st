as yet unclassified
alloy: aCollectionOfContexts
	
	^ self new
		arguments: 
			(aCollectionOfContexts gather: [ :each | ((1 to: each numTemps) collect: [ :index | each tempAt: index])]);
		tempNames:
			(aCollectionOfContexts gather: #tempNames)