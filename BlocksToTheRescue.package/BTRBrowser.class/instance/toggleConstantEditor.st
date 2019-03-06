as yet unclassified
toggleConstantEditor

	self okToChange ifTrue:
		[self isShowingConstantEditor
			ifTrue:
				[contentsSymbol := #source]
			ifFalse:
				[self installConstantEditor.
				contentsSymbol := self constantEditorSymbol].
		self setContentsToForceRefetch.
		self contentsChanged]