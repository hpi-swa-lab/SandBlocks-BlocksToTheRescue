as yet unclassified
testOccupantBlocks

	| tile |
	tile := SOBTile new.
	tile occupyBy: SOBBox new.
	self assert: tile isOccupied.