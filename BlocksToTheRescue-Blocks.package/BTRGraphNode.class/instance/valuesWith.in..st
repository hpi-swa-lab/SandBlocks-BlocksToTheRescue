as yet unclassified
valuesWith: arguments in: aContext
	
	"We need to combine the context information from the graph call and the node call"
	| alloyContext result |
	alloyContext := BTRParameterContext new
		sender: thisContext sender;
		receiver: aContext receiver;
		arguments: ((1 to: aContext numTemps) collect: [ :each | aContext tempAt: each ]), (arguments collect: #value);
		tempNames: aContext tempNames, (arguments collect: #key). 
	result := (self block valueInContext: alloyContext).
	(result isArray
		ifFalse: [ {result} ]
		ifTrue: [ result ]) withIndexDo: [:each :index | self activateEdgeAt: index with: each]