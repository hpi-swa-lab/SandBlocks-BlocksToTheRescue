toolbuilder
codeTextSpec

	^ PluggableCodePaneSpec new
		model: self;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.