accessing
placeAboveMe: aGameElement
	"Set the position of aGameElement to be directly on my top"
	|x y|
	y := self top - (aGameElement height).
	x := self center x - (aGameElement width / 2).
	aGameElement position: (x @ y).
