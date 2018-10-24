moving
movePlayerTo: destinationPoint

	self moveOccupantAt: self playerPosition to: destinationPoint. 
	self information moved.