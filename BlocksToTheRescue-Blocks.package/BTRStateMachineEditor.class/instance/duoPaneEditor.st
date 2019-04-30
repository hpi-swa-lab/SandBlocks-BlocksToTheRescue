views
duoPaneEditor

	| panel |
	panel := PluggablePanelMorph new
		model: self;
		getChildrenSelector: #duoPaneEditorContents;
		color: Color transparent;
		layoutPolicy: ProportionalLayout new;
		name: 'StateMachineEditor';
		yourself.
	self changed: #duoPaneEditorContents.
	^ panel