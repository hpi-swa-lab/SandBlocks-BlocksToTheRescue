comparing
storeOn: aStream

	| extension |
	extension := self instVarNamed: #extension.
	self instVarNamed: #extension put: nil.
	super storeOn: aStream.
	self instVarNamed: #extension put: extension.