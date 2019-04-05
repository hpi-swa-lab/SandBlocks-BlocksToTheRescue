as yet unclassified
editorView

	^ PluggableListMorph
		on: self
		list: #readOnlyCollection
		selected: #index
		changeSelected: #index:
		menu: nil
		keystroke: #keyStroke: