accessing
maxExpression: aString

	"Set my maximumValue by evaluating aString, a Smalltalk 
	expression which results in a Number instance."

	self slider maximumValue: aString asNumber.
	self maxTextField hasUnacceptedEdits: false.