loading
ressourceNamed: aString
	^self dataFolder readOnlyFileNamed: aString do: [:file | Form fromBinaryStream: file]