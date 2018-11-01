initialize-release
set: anObject

	self morph: anObject asMorph.
	self morph extension setProperty: #sprite toValue: self. 
	"self morph rotationCenter: self morph extent / 2."
	anObject addDependent: self.