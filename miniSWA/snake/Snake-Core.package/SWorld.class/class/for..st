as yet unclassified
for: aSGame

	| world |
	world := self new.
	world setModel: aSGame.
	world initialize.
	aSGame world: world.
	^ world.