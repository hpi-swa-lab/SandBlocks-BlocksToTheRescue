block methods
showingSerializedViewer

	^ (self isShowingSerializedViewer
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'serialized viewer'	