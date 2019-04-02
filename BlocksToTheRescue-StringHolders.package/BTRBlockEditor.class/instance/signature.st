as yet unclassified
signature

	^ self content 
		ifNotNil: [:content | content signature]
		ifNil: [':No method selected']