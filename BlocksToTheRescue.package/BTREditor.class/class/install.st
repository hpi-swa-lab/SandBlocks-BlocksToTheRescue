as yet unclassified
install

	self initialize.
	OldEditorClass := TextMorphForEditView defaultEditorClass.
	TextMorphForEditView defaultEditorClass: self.