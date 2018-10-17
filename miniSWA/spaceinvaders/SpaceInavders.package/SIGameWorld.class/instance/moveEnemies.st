as yet unclassified
moveEnemies
	
	"Is there a better way than counting and moving them only every 10th tick?"
	((self tickCounter \\ (self relativeToStepEnemyMovingTicksVertical)) = 0) ifTrue: [
		self enemiesMovingRight
		ifTrue: [self sIEnemies do: [ :enemy | enemy position: (enemy position + (10 @ 0))]]
		ifFalse: [self sIEnemies do: [ :enemy | enemy position: (enemy position + (-10 @ 0))]]].
	
	((self tickCounter \\ (self relativeToStepEnemyMovingTicksHorizontal)) = 0) ifTrue: [
		self enemiesMovingAlterDirection.
		self sIEnemies do: [ :enemy | enemy position: (enemy position + (0 @ self enemiesVerticalStepDistance))]].
