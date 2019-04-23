as yet unclassified
valuesWith: arguments in: aContext
	
	"We need to combine the context information from the graph call and the node call"
	| alloyContext |
	alloyContext := BTRParameterContext new
		sender: thisContext sender;
		receiver: aContext receiver;
		arguments: aContext arguments, arguments;
		tempNames: aContext tempNames, ((1 to: arguments size) collect: #threeDigitName). 
	^ self block valueInContext: alloyContext