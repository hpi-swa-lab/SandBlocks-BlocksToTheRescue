accessing
minExpression: aString

	"Set my miniumValue by evaluating aString, a Smalltalk 
	expression which results in a Number instance."

	self slider minimumValue: aString asNumber.
	self minTextField hasUnacceptedEdits: false.