block methods
toggleBlockEditor

	self okToChange
		ifTrue: [
			self isShowingBlockEditor
				ifTrue: [self setDefaultContents]
				ifFalse: [
					self ensureBlockMethodIfCanceled: [^ self].
					self installBlockEditor].
			self setContentsToForceRefetch.
			self contentsChanged].
	