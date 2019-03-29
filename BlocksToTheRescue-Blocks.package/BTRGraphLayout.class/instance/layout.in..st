layout
layout: aBTRGraphEditorMorph in: newBounds
	
	self current: aBTRGraphEditorMorph.
	
	self 
		layoutNodes;
		layoutEdges;
		layoutSignatureBar.
	
	self current: nil.