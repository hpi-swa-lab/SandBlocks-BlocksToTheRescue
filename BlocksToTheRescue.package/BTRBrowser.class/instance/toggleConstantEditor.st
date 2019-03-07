constant methods
toggleConstantEditor

	self okToChange ifTrue:
		[self isShowingConstantEditor
			ifTrue:
				[contentsSymbol := #source]
			ifFalse:
				[self ensureConstantMethodIfCanceled: [^ self].
				self installConstantEditor.
				contentsSymbol := self constantEditorSymbol].
		self setContentsToForceRefetch.
		self contentsChanged]