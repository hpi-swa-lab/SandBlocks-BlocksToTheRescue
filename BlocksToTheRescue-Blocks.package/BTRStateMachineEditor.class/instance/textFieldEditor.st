views
textFieldEditor

	| text |
	text :=PluggableTextMorphPlus
		on: self
		text: #text
		accept: #text: .
	text styler: (BTRBlockyST80TextStyler newForWorkspace: text).
	text updateStyle.
	^ text