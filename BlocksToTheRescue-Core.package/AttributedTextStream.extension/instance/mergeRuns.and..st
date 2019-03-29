*BlocksToTheRescue-Core
mergeRuns: aRunArray and: anotherRunArray
	
	"Presumes that the two RunArrays have the same length"
	| anArray anotherArray |
	anArray := aRunArray asArray.
	anotherArray := anotherRunArray asArray. 
	
	^ RunArray newFrom: (anArray withIndexCollect: [:each :index |
			each, (anotherArray at: index)])