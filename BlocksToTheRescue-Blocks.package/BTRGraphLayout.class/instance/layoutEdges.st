layout
layoutEdges


	self current edgeViews keysAndValuesDo: [:edge :edgeView | | outgoing incoming startOffset endOffset|
		outgoing := self current graph outgoing: edge key.
		startOffset := (outgoing indexOf: edge) - (outgoing size + 1 / 2) * (0@20).
		incoming := self current graph incoming: edge value.
		endOffset := (incoming indexOf: edge) - (incoming size + 1  / 2) * (0@20).
		edgeView setVertices: {(self current nodeViews at: edge key) rightCenter + startOffset. (self current nodeViews at: edge value) leftCenter + endOffset. }].