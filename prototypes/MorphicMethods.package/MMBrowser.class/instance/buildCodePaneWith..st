as yet unclassified
buildCodePaneWith: builder

	| spec textSpec |
	spec := super buildCodePaneWith: builder.
	textSpec := (spec isKindOf: PluggablePanelSpec)
		ifTrue: [spec children last]
		ifFalse: [spec].
	textSpec name: #textField.
	^  spec