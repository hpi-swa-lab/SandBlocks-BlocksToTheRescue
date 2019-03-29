layout
layoutNodes

	self layers keysAndValuesDo: [:x :layer | layer withIndexDo: [:node :y | 
			(self current nodeViews at: node) 
				center: x@y - (0.5@0.5) * self nodeSpace + self current position + self nodeOffset;
				extent: self nodeSpace * 0.8]].