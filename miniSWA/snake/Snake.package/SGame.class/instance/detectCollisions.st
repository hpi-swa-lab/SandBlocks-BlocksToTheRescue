collision
detectCollisions

	| toDelete |
	self flag: #Todo.  "have to remove deleted objects from eventsystem"
	toDelete := OrderedCollection new.
	self snakes do: [:each | self snakes 
		do: [:snake | (snake collidesWithSnake: each) ifTrue:
				[toDelete add: each]]].
	toDelete do: [:each | self eventSystem dispatch: (SDieEvent new snake: each)].
	
	toDelete := OrderedCollection new.
	self snakes do: [:each | self fodder 
		do: [:fodder | (each collidesWithFodder: fodder) ifTrue:
				[toDelete add: fodder]]].
	toDelete do: [:each | self eventSystem dispatch: (SDevourEvent new fodder: each)].
	