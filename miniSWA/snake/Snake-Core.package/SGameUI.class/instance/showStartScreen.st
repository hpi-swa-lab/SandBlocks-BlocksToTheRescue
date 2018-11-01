as yet unclassified
showStartScreen

	| world panel |
	world := SWorld for: self game.
	panel := PluggablePanelMorph new.
	panel addMorph: world.
	self addMorph: panel fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	
	