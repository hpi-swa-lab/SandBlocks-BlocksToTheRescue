toolbuilder
buildWith: aBuilder

	^ (PluggablePanelSpec new
		model: self;
		children: #contentMorphs;
		name: 'Constant Editor View';
		buildWith: aBuilder) in: [:panel | self viewPort: panel. panel]