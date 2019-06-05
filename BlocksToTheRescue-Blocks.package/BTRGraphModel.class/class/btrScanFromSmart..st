as yet unclassified
btrScanFromSmart: aReadStream

	^ (BTRSmartSerializer deserialize: aReadStream upToEnd)
		fixDependents;
		fixEdgeAssociations;
		yourself