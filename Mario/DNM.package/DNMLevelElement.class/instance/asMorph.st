converting
asMorph
	"Answers a morph of its type at its position."
	^(DNMCollidingGameElementFactory singleton create: self type)
		position: self position;
		yourself