accessing
windowContents

	^ {self duoPaneEditor
			layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
			yourself }