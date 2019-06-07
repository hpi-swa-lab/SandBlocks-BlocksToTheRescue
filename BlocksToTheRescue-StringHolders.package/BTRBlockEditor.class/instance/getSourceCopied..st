accessing
getSourceCopied: aBoolean
	
	^ BTRBlocketMethod
		sourceOn: (aBoolean ifTrue: [self content copy] ifFalse: [self content])
		signature: self currentSignature