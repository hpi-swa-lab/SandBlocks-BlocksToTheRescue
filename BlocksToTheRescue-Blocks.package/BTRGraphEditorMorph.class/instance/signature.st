as yet unclassified
signature

	self graph selector isUnary ifTrue: [^ self graph selector].
	^ String streamContents: [:stream | self graph selector keywords with: self graph parameterNames do:
		[:keyword :parameter | 
			stream 
				nextPutAll: keyword;
				nextPutAll: ' ';
				nextPutAll: parameter;
				nextPutAll: ' ']]