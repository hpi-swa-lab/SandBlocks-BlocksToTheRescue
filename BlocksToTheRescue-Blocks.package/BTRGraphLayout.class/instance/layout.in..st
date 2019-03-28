layout
layout: aBTRGraphEditorMorph in: newBounds
	
	| layers |
	layers := (self layersOf: aBTRGraphEditorMorph).
	layers keysAndValuesDo: [:x :layer | layer withIndexDo: [:node :y | 
			(aBTRGraphEditorMorph nodeViews at: node) 
				center: x@y - (0.5@0.5) * self nodeSpace + aBTRGraphEditorMorph position;
				extent: self nodeSpace * 0.8]].
	aBTRGraphEditorMorph edgeViews keysAndValuesDo: [:edge :edgeView |
		edgeView setVertices: {(aBTRGraphEditorMorph nodeViews at: edge key) rightCenter. (aBTRGraphEditorMorph nodeViews at: edge value) leftCenter. }]