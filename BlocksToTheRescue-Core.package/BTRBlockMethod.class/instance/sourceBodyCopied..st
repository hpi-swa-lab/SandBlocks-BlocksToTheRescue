accessing
sourceBodyCopied: aBoolean
	
	^ (Text fromString: '^ '), (BTRBlockAttribute asTextFrom: (aBoolean ifTrue: [self blockModel copy] ifFalse: [self blockModel]))