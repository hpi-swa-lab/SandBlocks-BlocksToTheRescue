constant methods
toggleConstantEditor

	self okToChange ifTrue:
		[self isShowingConstantEditor
			ifTrue:
				[self setDefaultContents]
			ifFalse:
				[self ensureConstantMethodIfCanceled: [^ self].
				self installConstantEditor.
				self contentsSymbol: self constantEditorSymbol].
		self setContentsToForceRefetch.
		self contentsChanged]