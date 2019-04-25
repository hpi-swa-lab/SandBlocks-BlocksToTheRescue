views
editorViewContents

	^ {	self textFieldEditor
			layoutFrame: (LayoutFrame fractions: (0.5@0 corner: 1@1));
			yourself.
		self treeMorphViewer
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 0.5@1));
			yourself}