as yet unclassified
set: anObject

	self morph: anObject asMorph.
	self morph extension setProperty: #sprite toValue: self. 
	anObject addDependent: self.