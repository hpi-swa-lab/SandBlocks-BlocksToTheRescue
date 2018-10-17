spawning
spawnSnake

	| snake |
	snake := SSnake new.
	self snakes add: snake.
	snake putAt: self world size / 2.
	self eventSystem filterEvent: SChangeDirectionEvent for: snake.
	self eventSystem filterEvent: SDieEvent for: snake.
	self eventSystem filterEvent: SDevourEvent for: snake.