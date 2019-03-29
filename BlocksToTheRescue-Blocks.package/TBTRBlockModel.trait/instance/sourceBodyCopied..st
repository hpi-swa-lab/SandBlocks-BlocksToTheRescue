accessing
sourceBodyCopied: aBoolean
	
	^ (Text fromString: '^ '), (BTRBlockAttribute asTextFrom: (aBoolean ifTrue: [self copy] ifFalse: [self]))