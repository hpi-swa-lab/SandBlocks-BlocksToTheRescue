as yet unclassified
open 

	| window world |
	window := SystemWindow new.
	world := self new.
	window addMorph: world frame: 1 asPoint asRectangle.
	window openInWorldExtent: world extent.