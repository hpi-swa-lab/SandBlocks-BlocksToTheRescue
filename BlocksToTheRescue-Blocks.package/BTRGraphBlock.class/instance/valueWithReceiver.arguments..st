as yet unclassified
valueWithReceiver: anObject arguments: anArrayOfObjects

	| testContext |
	testContext := BTRParameterContext new 
			sender: thisContext sender;
			arguments: anArrayOfObjects;
			tempNames: self parameterNames.
	^ self valueInContext: testContext
	"^ (Context
		sender: testContext
		receiver: self
		method: (self class methodDict at: #value)
		arguments: {}) jump"
	"^ Compiler new
		evaluate: '|', (self parameterNames inject: '' into: [:sum :each | sum,' ',each,'2']), ' |',
		((self parameterNames withIndexCollect: [:each :index | each,'2', ' := (thisContext at: 1) tempAt: ',index,' . ']) inject: '' into: [:sum :each | sum,' ',each]),
		' self value' 
		in: (TestContext new 
			sender: thisContext sender;
			arguments: anArrayOfObjects;
			tempNames: self parameterNames)
		to: self."