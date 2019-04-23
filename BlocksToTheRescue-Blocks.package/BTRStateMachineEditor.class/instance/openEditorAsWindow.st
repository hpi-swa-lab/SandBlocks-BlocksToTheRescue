accessing
openEditorAsWindow

	PluggableSystemWindow new
		model: self;
		closeWindowSelector: #closeEditorWindow;
		label: 'State Machine Editor';
		getChildrenSelector: #windowContents;
		layoutPolicy: ProportionalLayout new;
		openInWorld.
	self changed: #windowContents
	"self textFieldEditor openInWindowLabeled: 'State Machine Editor'."