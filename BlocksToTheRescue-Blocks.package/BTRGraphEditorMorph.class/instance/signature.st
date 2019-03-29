as yet unclassified
signature

	^ String streamContents: [:stream | self graph selector keywords with: self graph parameterNames do:
		[:keyword :parameter | 
			stream 
				nextPutAll: keyword;
				nextPutAll: ' ';
				nextPutAll: parameter;
				nextPutAll: ' ']]