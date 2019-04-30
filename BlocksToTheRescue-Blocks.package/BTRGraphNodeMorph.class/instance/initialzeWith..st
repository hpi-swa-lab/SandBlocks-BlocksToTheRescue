as yet unclassified
initialzeWith: aBTRGraphNode


	self node: aBTRGraphNode.
	aBTRGraphNode addDependent: self.
	self initializeBlockMorph.