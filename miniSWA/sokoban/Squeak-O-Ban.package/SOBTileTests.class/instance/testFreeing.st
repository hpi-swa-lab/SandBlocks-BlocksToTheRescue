as yet unclassified
testFreeing

	| tile |
	tile := SOBTile new.
	tile occupyBy: SOBBox new.
	tile free.
	self assert: tile isFree.