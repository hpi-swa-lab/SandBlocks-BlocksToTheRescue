*BlocksToTheRescue-Core
btrEquals: anotherMorph

	^ (BTRSmartSerializer serialize: self) = (BTRSmartSerializer serialize: anotherMorph)