toolbuilder
buildWith: aBuilder

	^ (PluggablePanelSpec new
		model: self;
		children: #contentMorphs;
		name: 'Constant Editor View';
		buildWith: aBuilder) in: [:panel | 
			panel eventHandler: self eventHandler.
			self viewPort: panel.
			panel]