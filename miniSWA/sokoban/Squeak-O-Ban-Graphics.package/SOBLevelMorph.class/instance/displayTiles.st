initialize-release
displayTiles

	1 to: self levelSize x do: 
		[:col | 1 to: self levelSize y do:
			[:row | self displayTileAt: col @ row]].