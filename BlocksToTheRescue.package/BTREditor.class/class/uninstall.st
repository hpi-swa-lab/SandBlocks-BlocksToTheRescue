as yet unclassified
uninstall

	OldEditorClass 
		ifNotNil: [TextMorphForEditView defaultEditorClass: OldEditorClass. 
			OldEditorClass := nil]
	