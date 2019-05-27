*BlocksToTheRescue-Core
btrRunsEqual: aRunArray
	
	self size = aRunArray size and: 
		[ self with: aRunArray do: 
			[ :firstRun :secondRun | 
				firstRun size = secondRun size and: 
					[ firstRun with: secondRun do: 
						[ :firstAtt :secondAtt | (firstAtt btrEquals: secondAtt) ifFalse: [self haltOnce.^ false]]]]].	
	^ true