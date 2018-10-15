as yet unclassified
representation

	| representation |
	representation := OrderedCollection new.
	representation add: self asMorph.
	self occupant addRepresentationTo: representation.
	^ representation 