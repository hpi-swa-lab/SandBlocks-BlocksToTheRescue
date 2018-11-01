as yet unclassified
open

	| world game |
	game := self new.
	world := SWorld for: game.
	world openInWorld.
	^ game.