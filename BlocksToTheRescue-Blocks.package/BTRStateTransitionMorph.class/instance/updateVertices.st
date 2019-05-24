updating
updateVertices

	"| depth |
	depth := self depth."
	self vertices at: 1 put: self startPosition.
	self vertices at: self vertices size put: self endPosition.
	self computeBounds.
	self nameMorph ifNotNil: [:m | m
		step;
		center: self labelPosition].