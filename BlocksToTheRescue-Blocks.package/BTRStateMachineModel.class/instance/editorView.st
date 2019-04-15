interface-views
editorView

	^ SimpleHierarchicalListMorph
		on: [self states collect: [:state | BTRStateWrapper with: state]]
		list: #value
		selected: nil
		changeSelected: nil