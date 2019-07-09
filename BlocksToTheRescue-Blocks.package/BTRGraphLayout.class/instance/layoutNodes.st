layout
layoutNodes

	self layers keysAndValuesDo: [:x :layer | layer withIndexDo: [:node :y | | viewData position extent |
			viewData := (self current graph viewData at: #nodes ifAbsent: [Dictionary new]) at: node ifAbsent: [Dictionary new].
			position := viewData at: #position ifAbsent: [x@y].
			extent := self nodeSize * (viewData at: #extent ifAbsent: [1]).
			(self current nodeViews at: node) 
				center: position - (0.5@1) * self nodeSpace + self current position + self nodeOffset;
				extent: extent
	]].