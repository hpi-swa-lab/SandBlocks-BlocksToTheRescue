as yet unclassified
displayTileOf: aLevel at: aPoint

	(aLevel at: aPoint) representation do: [:each | self at: aPoint put: each]