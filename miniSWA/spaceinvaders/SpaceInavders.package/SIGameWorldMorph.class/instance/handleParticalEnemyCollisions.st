as yet unclassified
handleParticalEnemyCollisions
	
	| sIEnemiesTmp sIParticalsTmp |
	sIEnemiesTmp := self sIEnemies.
	sIParticalsTmp := self sIParticals.
	self sIEnemies do: [ :enemy |
		self sIParticals do: [ :partical |
			(enemy intersects: (self asRectangle: partical)) ifTrue: 
			[ sIEnemiesTmp remove: enemy ifAbsent: [ "do nothing" ]. self removeMorph: enemy.
			  sIParticalsTmp remove: partical ifAbsent: [ "do nothing" ]. self removeMorph: partical.
			  ressourceManager playSound: 'Death Enemy Sound'.
			  self increaseScore ]
		]
	].
	self sIEnemies: sIEnemiesTmp.
	self sIParticals: sIParticalsTmp.