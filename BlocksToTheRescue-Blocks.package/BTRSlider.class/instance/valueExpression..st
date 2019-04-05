accessing
valueExpression: aString

	"Set my value by evaluating aString, a Smalltalk 
	expression which results in a Number instance."

	self value: aString asNumber.
	self valueTextField hasUnacceptedEdits: false.