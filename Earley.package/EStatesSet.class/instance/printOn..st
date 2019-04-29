printing
printOn: aStream

	| index |
	index := 0. 
	self states 
		do: [:each | aStream 
						nextPutAll: '=== ' , index asString, ' ==='; 
						cr.
					index := index + 1.
					each printOn: aStream usingGrammar: self grammar] 
		separatedBy: [aStream cr; cr] 