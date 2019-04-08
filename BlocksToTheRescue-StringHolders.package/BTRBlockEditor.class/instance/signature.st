as yet unclassified
signature

	^ self blockMethod 
		ifNotNil: [self blockMethod signature]
		ifNil: [':No method selected']