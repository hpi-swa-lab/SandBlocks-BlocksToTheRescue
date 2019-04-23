accessing
buildTextEditorSpecWith: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		children: { self textFieldEditor };
		yourself