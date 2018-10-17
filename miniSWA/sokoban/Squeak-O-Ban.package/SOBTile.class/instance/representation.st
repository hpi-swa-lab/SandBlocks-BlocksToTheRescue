as yet unclassified
representation

	| representation |
	representation := OrderedCollection new.
	representation add: (SOBSprite for: self).
	self occupant addRepresentationTo: representation.
	^ representation 