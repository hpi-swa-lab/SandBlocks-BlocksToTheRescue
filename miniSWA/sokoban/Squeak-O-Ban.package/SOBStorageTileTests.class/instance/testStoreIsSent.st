as yet unclassified
testStoreIsSent

	| tile observer |
	tile := SOBStorageTile new.
	observer := SOBTestObserver new.
	tile addDependent: observer.
	tile occupyBy: SOBBox new.
	self assert: (observer hasSeen: #stored).