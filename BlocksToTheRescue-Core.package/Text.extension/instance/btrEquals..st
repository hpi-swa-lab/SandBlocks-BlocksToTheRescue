*BlocksToTheRescue-Core
btrEquals: anotherObject

	^ (anotherObject isText)
		ifTrue: [(runs btrEquals: anotherObject runs)
			and: [string btrEquals: anotherObject string]]
		ifFalse: [false]