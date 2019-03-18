drawing
drawTilesOn: aCanvas

	(self bounds insetBy: self borderStyle inset)
		tiledBy: self tileSize do: [ :indexPosition :tileRectangle |
			aCanvas
				fillRectangle: tileRectangle
				color: (self colorForTile: indexPosition)].