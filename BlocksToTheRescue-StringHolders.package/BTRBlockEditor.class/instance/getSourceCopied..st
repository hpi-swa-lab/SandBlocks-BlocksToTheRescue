accessing
getSourceCopied: aBoolean
	
	^ BTRBlocketMethod
		sourceOn: (aBoolean ifTrue: [self blockMethod blockModel copy] ifFalse: [self blockMethod blockModel])
		signature: self currentSignature