drawing
drawTilesOn: aCanvas

	(self bounds insetBy: self borderStyle inset)
		tiledBy: self tileSize do: [ :aPoint :aRectangle |
			aCanvas
				fillRectangle: aRectangle
				color: (self colorForTile: aPoint)].