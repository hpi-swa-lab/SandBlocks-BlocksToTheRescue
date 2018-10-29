constants
fullScreenExtent
	| extent | 
	extent := self worldBounds width min: self worldBounds height.
	^ extent asPoint