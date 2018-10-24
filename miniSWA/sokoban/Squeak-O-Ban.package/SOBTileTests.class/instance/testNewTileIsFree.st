as yet unclassified
testNewTileIsFree

	| tile |
	tile := SOBTile new.
	self assert: tile isFree.