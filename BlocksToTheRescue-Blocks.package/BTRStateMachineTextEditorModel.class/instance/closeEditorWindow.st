accessing
closeEditorWindow
	
	self hasUnacceptedEdits
		ifTrue: [ self promptForCancel ]