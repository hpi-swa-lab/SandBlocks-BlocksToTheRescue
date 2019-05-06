as yet unclassified
initializeWith: aBTRGraphNode

	self node: aBTRGraphNode.
	aBTRGraphNode addDependent: self.
	self initializeBlockMorph.