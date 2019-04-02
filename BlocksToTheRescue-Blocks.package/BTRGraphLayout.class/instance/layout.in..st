layout
layout: aBTRGraphEditorMorph in: newBounds
	
	self current: aBTRGraphEditorMorph.
	
	self 
		layoutNodes;
		layoutEdges.
	
	self current: nil.