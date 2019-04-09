accessing
quantumExpression: aString

	"Set my quantum by evaluating aString, a Smalltalk 
	expression which results in a Number instance."
	
	(aString = 'nil' or: [aString = '0'])
		ifTrue: [self quantum: nil]
		ifFalse: [self quantum: aString asNumber].
	self quantumTextField hasUnacceptedEdits: false.