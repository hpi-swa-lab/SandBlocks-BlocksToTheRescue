*BlocksToTheRescue-Core
getSourceFromFileAt: sourcePointer
	
	| position index text |
	position := SourceFiles filePositionFromSourcePointer: sourcePointer.
	position = 0 ifTrue: [ ^nil ].
	index := SourceFiles fileIndexFromSourcePointer: sourcePointer.
	text := (RemoteString newFileNumber: index position: position) text.
	^ self resolveBlockModelsFor: text