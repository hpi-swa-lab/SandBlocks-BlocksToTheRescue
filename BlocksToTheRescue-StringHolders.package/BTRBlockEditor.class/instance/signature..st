as yet unclassified
signature: aString
	
	self currentSignature: aString.
	self changed: #signature.
	self hasUnacceptedEdits: true.
	^ true