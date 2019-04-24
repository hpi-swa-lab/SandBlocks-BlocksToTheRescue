drawing
drawTilesOn: aCanvas inside: aRectangle

	aRectangle tiledBy: self tileSize do: [ :indexPosition :tileRectangle |
			aCanvas
				fillRectangle: tileRectangle
				color: (self colorForTile: indexPosition)].