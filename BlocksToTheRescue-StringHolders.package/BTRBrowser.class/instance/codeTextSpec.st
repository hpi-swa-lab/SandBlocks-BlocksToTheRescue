toolbuilder
codeTextSpec

	^ PluggableCodePaneSpec new
		model: self;
		getText: #contents; 
		setText: #contents:notifying: ; 
		stylerClass: BTRBlockyST80TextStyler;
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted: