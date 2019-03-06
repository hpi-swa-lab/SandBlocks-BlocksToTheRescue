as yet unclassified
contentsSymbolQuints

	^ super contentsSymbolQuints , 
	(self optionalContentsSymbolQuints 
		ifNotEmpty: [:optionals | {#- . #-}, optionals]
		ifEmpty: [{}])