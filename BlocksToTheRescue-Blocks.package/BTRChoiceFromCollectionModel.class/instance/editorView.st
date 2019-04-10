views
editorView

	^ PluggableListMorph
		on: self
		list: #collectionLabels
		selected: #index
		changeSelected: #index:
		menu: nil
		keystroke: #keyStroke:fromEditor: