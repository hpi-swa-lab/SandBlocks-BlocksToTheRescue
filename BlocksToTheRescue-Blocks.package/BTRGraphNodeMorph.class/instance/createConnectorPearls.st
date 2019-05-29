as yet unclassified
createConnectorPearls

	| left right size |
	size := self pearlSize.
	left := CircleMorph new.
	left 
		color: self color;
		borderWidth: 0.
	right := left copy.
	self 
		addMorph: left fullFrame: (LayoutFrame fractions: (0@0.5 corner: 0@0.5) offsets: (size negated asPoint corner: size asPoint));
		addMorph: right fullFrame: (LayoutFrame fractions: (1@0.5 corner: 1@0.5) offsets: (size negated asPoint corner: size asPoint)).
		