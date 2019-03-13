toolbuilder
codeTextSpec

	^ PluggableCodePaneSpec new
		model: self;
		stylerClass: BTRBlockyST80TextStyler;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.