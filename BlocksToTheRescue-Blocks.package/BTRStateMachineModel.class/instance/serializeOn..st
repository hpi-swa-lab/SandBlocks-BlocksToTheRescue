serialization
serializeOn: aWriteStream

	self statesSorted
		do: [:state |
			aWriteStream
				store: state name;
				nextPutAll: ' -> {'.
			state transitions sorted
				do: [:transition |
					aWriteStream
						nextPut: Character cr;
						nextPut: Character tab.
					transition serializeOn: aWriteStream]
				separatedBy: [aWriteStream nextPut: $. ].
			aWriteStream nextPutAll: '}.' ]
		separatedBy: [aWriteStream nextPut: Character cr].