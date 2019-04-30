printing
printOn: aStream

	| index |
	index := 1. 
	self states 
		do: [:each | self printStateNumbered: index on: aStream.
					index := index + 1.] 
		separatedBy: [aStream cr; cr] 