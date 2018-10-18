as yet unclassified
moveEnemies
	
	self shouldMoveEnemiesHorizontal ifTrue: [ self sIEnemies do: [ :enemy | enemy moveHorizontal ]].
	self shouldMoveEnemiesVertical ifTrue: [ self sIEnemies do: [ :enemy | enemy moveDown ]].
