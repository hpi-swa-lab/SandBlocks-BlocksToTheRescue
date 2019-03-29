*BlocksToTheRescue-Core
initialize: n

	super initialize.
	characters := (Text new: n) writeStream.
	currentAttributes := #().
	currentRun := 0.
	attributeValues := (Array new: (n min: 10)) writeStream.
	attributeRuns := (Array new: (n min: 10)) writeStream