identifier-analysis
sectionIdentifierFor: aSymbol

	(aSymbol startsWith: 'array') ifTrue: [^ #array].
	(aSymbol startsWith: 'byteArray') ifTrue: [^ #array].
	(aSymbol startsWith: 'block') ifTrue: [^ #block].
	(aSymbol startsWith: 'primitive') ifTrue: [^ #pragma].
	(aSymbol includesSubstring: 'Parenthesis') ifTrue: [^ #parentheses].
	(aSymbol includesSubstring: 'Brace') ifTrue: [^ #brackets].

	^ #otherCohesion