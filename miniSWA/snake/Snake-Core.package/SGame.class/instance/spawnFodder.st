spawning
spawnFodder
	
	| fodder |
	fodder := SFodder new position: (self world size x random - 1) @  (self world size y random - 1).
	self fodder add: fodder.
	self eventSystem filterEvent: SDevourEvent for: fodder.