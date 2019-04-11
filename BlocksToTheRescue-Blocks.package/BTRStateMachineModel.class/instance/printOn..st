printing
printOn: aWriteStream

	self states
		do: [:state |
			aWriteStream
				nextPut: $# ;
				nextPutAll: state name;
				nextPutAll: ' -> {'.
			state transitions
				do: [:transition |
					aWriteStream
						nextPut: Character cr;
						nextPut: Character tab;
						nextPut: $# ;
						nextPutAll: transition name;
						nextPutAll: ' -> ';
						nextPut: $# ;
						nextPutAll: transition targetStateName]
				separatedBy: [aWriteStream nextPut: $. ].
			aWriteStream nextPutAll: '}.' ]
		separatedBy: [aWriteStream nextPut: Character cr].