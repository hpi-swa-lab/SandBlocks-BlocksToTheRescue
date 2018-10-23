accessing-private
register: aBOEntity on: aBOGameField

	self entityMorphMap add: aBOEntity -> (self buildMorphOf: aBOEntity on: aBOGameField).
	aBOEntity updateBounds.
	^ aBOEntity