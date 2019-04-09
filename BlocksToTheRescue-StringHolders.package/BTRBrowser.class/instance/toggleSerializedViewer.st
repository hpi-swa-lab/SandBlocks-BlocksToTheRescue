block methods
toggleSerializedViewer

	self okToChange
		ifTrue: [
			self isShowingSerializedViewer
				ifTrue: [self setDefaultContents]
				ifFalse: [self installSerializedViewer].
			self setContentsToForceRefetch.
			self contentsChanged].
	