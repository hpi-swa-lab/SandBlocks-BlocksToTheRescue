entity-ops
move: speed

	self position: self position + speed.

	"((self position + speed) ~= self position) ifTrue: [^ self collideWithPlayField]."

	"self gameField brickManager entities anySatisfy: [:entity | entity bounds ]"