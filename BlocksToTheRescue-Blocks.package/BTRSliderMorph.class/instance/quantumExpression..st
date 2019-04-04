accessing
quantumExpression: aString

	"Set my quantum by evaluating aString, a Smalltalk 
	expression which results in a Number instance."

	self slider quantum: aString asNumber.
	self quantumTextField hasUnacceptedEdits: false.