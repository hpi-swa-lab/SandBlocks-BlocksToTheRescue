accessing
nodes: anObject

	nodes := anObject asOrderedCollection.
	self nodes do: [:each | each addDependent: self].