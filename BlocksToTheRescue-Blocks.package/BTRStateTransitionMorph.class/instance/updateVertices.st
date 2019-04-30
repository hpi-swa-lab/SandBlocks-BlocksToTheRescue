updating
updateVertices

	| depth |
	depth := self depth.
	self setVertices: {
		self startPosition.
		self startPosition + (0@depth).
		self endPosition + (0@depth).
		self endPosition}.
	self nameMorph ifNotNil: [:m | m
		step;
		center: {self vertexAt: 2. self vertexAt: 3} average].