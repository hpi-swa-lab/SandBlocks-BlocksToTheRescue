accessing
edges: anObject

	edges := anObject asOrderedCollection.
	self edges do: [:each | each addDependent: self].