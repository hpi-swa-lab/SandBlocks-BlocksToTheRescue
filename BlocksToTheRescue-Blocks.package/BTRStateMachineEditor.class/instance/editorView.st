views
editorView

	| panel |
	panel := PluggablePanelMorph new
		model: self;
		getChildrenSelector: #editorViewContents;
		color: Color transparent;
		layoutPolicy: ProportionalLayout new;
		name: 'StateMachineEditor';
		yourself.
	self changed: #editorViewContents.
	^ panel