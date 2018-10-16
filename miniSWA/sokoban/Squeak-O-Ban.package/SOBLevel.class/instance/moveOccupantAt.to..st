as yet unclassified
moveOccupantAt: fromPoint to: destinationPoint

	| occupant |
	occupant := (self at: fromPoint) occupant.
	occupant moveTo: destinationPoint.
	self occupy: destinationPoint by: occupant.
	self free: fromPoint.