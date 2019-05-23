layout
layoutEdges


	self current edgeViews keysAndValuesDo: [:edge :edgeView | | start end pearlOffset |
		start := (self current nodeViews at: edge key) rightCenter.
		end := (self current nodeViews at: edge value) leftCenter.
		pearlOffset := (end - start) normalized * self current nodeViews anyOne pearlSize. 
		edgeView setVertices: {start + pearlOffset. end - pearlOffset. }].