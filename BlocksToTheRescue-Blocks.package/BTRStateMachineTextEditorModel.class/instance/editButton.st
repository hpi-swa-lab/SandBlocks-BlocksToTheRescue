views
editButton

	^ IconicButton new
		labelGraphic: ((Smalltalk at: #BTRIcons ifPresent: #penIcon) ifNil: [ToolIcons exception]);
		color: Color veryDarkGray;
		in: [:btn | 
			btn layoutFrame: (
				LayoutFrame 
					fractions: (1@0 corner: 1@0) 
					offsets: (btn width negated@0 corner: btn width negated@0))];
		target: self;
		actionSelector: #openEditorAsWindow;
		yourself