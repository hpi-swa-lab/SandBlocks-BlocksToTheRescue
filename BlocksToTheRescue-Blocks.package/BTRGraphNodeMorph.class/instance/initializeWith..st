as yet unclassified
initializeWith: aBTRGraphNode

	self node: aBTRGraphNode.
	self initializeBlockMorph.
	aBTRGraphNode addDependent: self.