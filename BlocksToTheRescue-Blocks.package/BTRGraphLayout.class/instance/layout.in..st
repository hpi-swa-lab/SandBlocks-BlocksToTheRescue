layout
layout: aBTRGraphEditorMorph in: newBounds
	
	| layers |
	layers := (self layersOf: aBTRGraphEditorMorph).
	aBTRGraphEditorMorph submorphs do: [:each | 
		each position: (self positionOfNode: each in: layers) * self nodeSpace + aBTRGraphEditorMorph position].