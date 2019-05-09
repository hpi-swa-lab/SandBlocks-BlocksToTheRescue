as yet unclassified
signature

	^ self blockMethod 
		ifNotNil: [self currentSignature]
		ifNil: [':No method selected']