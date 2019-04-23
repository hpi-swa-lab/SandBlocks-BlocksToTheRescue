as yet unclassified
drawOn: aCanvas

	| positions |
	super drawOn: aCanvas.
	positions := Dictionary new.
	self layers keysAndValuesDo: [:x :layer | layer withIndexDo: [:node :y | 
			positions at: node put: x@y * self nodeSpace + self position.]].
	positions keysAndValuesDo: [:each :position | aCanvas 
		fillOval: (Rectangle exactCenter: position extent: self nodeSize) 
		color: Color orange].
	self graph edges do: [:each | aCanvas 
		line: (positions at: each key) 
		to: (positions at: each value) 
		color: Color red].