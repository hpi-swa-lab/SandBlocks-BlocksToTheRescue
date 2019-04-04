drawing
drawGameObjects

	self allGameObjects do: [:each | each position: each relativePosition] 