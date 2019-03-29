compliance
fileIndex

	^ self sourcePointer
		ifNotNil: [SourceFiles fileIndexFromSourcePointer: self sourcePointer]
		ifNil: 0
	