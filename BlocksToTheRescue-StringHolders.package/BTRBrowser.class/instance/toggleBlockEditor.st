block methods
toggleBlockEditor

	self okToChange
		ifTrue: [
			self isShowingBlockEditor
				ifTrue: [self setDefaultContents]
				ifFalse: [
					(BTRConstantModel
						on: self method methodClass
						selector: self method selector)
							install.
					self installBlockEditor].
			self setContentsToForceRefetch.
			self contentsChanged].
	