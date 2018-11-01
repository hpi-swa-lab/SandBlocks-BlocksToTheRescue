initialization
initializeDefaultBricks

	1 to: 4 do: [:y |
		1 to: 7 do: [:x |
			self spawnBrick column: x of: 7 row: y of: 4]].