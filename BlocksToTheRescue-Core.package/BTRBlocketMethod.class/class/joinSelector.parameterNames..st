as yet unclassified
joinSelector: aSymbol parameterNames: anArray

	aSymbol isUnary ifTrue: [^ aSymbol].
	^ (aSymbol keywords with: anArray collect:
		[:keyword :parameter | keyword, ' ', parameter]) joinSeparatedBy: ' '