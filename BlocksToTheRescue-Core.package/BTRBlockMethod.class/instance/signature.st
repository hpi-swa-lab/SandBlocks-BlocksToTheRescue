accessing
signature

	self selector isUnary ifTrue: [^ self selector].
	^ String streamContents: [:stream | self selector keywords with: self parameterNames do:
		[:keyword :parameter | 
			stream 
				nextPutAll: keyword;
				nextPutAll: ' ';
				nextPutAll: parameter;
				nextPutAll: ' ']]