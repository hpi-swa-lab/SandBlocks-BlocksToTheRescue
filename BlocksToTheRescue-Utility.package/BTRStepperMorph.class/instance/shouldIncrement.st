testing
shouldIncrement

	^ ActiveHand position y < ((self localPointToGlobal: self position) y + (self height / 2))