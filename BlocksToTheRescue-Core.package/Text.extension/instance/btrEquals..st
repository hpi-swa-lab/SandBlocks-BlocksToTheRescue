*BlocksToTheRescue-Core
btrEquals: anotherObject

	^ (self string btrEquals: anotherObject string)
		and: [(self runs btrEquals: anotherObject runs)
				ifFalse: [self haltOnce];
				yourself]