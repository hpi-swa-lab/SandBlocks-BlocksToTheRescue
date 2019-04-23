accessing
windowContents

	^ { 
		self textFieldEditor
			layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
			yourself }