as yet unclassified
displayTileAt: aPoint

	(self level at: aPoint) representation do: [:each | self at: aPoint put: each]