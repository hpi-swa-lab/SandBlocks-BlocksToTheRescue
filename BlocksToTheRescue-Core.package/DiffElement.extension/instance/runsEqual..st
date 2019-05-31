*BlocksToTheRescue-Core
runsEqual: aRunArray
	
	| myRunArray |
	myRunArray := string runs. 
	myRunArray size = aRunArray size and: 
		[ myRunArray with: aRunArray do: 
			[ :firstRun :secondRun | 
				firstRun size = secondRun size and: 
					[ firstRun with: secondRun do: 
						[ :firstAtt :secondAtt | (firstAtt btrEquals: secondAtt) ifFalse: [^ false]]]]].
			
	^ true	