*BlocksToTheRescue-Core
btrEquals: anotherObject

	^ anotherObject class = self class
		and: [self btrRunsEqual: anotherObject]