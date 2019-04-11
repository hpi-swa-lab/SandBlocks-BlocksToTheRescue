printing
printOn: aWriteStream

	self states
		do: [:state |
			aWriteStream
				nextPutAll: state decoratedName;
				nextPutAll: #' -> ['.
			state transitions
				do: [:transition |
					aWriteStream
						nextPut: Character cr;
						nextPut: Character tab;
						nextPutAll: transition name;
						nextPutAll: #' -> ';
						nextPutAll: transition targetStateName].
			aWriteStream nextPut: $]]
		separatedBy: [aWriteStream nextPut: Character cr].