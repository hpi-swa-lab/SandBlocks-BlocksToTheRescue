as yet unclassified
testUnstoreIsSent

	| tile observer |
	tile := SOBStorageTile new.
	observer := SOBTestObserver new.
	tile 
		occupyBy: SOBBox new;
		addDependent: observer;
		free.
	self assert: (observer hasSeen: #unstored).