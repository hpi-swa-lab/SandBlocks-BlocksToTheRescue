accessing
placeLeftOfMe: aGameElement
	"Set the position of aGameElement to be directly on my left"
	|x y|
	y := self bottom - (aGameElement height).
	x := self left - (aGameElement width).
	aGameElement position: (x @ y).
