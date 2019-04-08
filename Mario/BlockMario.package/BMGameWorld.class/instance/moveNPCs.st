stepping and presenter
moveNPCs
	
	self gameObjects do: [:each | each isNPC ifTrue: [each move]]