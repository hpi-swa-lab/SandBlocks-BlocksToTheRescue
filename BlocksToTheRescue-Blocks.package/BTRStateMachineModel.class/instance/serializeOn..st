fileIn/out
serializeOn: aWriteStream

	self statesSorted
		do: [:state |
			aWriteStream
				nextPut: $# ;
				nextPutAll: state name;
				nextPutAll: ' -> {'.
			(state transitions
				sorted: BTRStateTransition compareBlock)
				do: [:transition |
					aWriteStream
						nextPut: Character cr;
						nextPut: Character tab.
					transition serializeOn: aWriteStream]
				separatedBy: [aWriteStream nextPut: $. ].
			aWriteStream nextPutAll: '}.' ]
		separatedBy: [aWriteStream nextPut: Character cr].