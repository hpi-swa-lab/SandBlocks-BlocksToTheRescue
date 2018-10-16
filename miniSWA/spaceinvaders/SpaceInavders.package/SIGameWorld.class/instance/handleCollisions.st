as yet unclassified
handleCollisions
	
	| sIEnemiesTmp sIParticalsTmp |
	sIEnemiesTmp := self sIEnemies.
	sIParticalsTmp := self sIParticals.
	self sIEnemies do: [ :enemy |
		self sIParticals do: [ :partical |
			(enemy intersects: (self asRectangle: partical)) ifTrue: 
			[ sIEnemiesTmp remove: enemy. self removeMorph: enemy.
			  sIParticalsTmp remove: partical. self removeMorph: partical.
			  self increaseScore ]
		]
	].
	self sIEnemies: sIEnemiesTmp.
	self sIParticals: sIParticalsTmp.