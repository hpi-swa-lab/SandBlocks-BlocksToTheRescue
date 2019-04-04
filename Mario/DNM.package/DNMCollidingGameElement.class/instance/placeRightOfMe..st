accessing
placeRightOfMe: aGameElement
	"Set the position of aGameElement to be directly on my right"
	|x y|
	y := self bottom - (aGameElement height).
	x := self right.
	aGameElement position: (x @ y).
