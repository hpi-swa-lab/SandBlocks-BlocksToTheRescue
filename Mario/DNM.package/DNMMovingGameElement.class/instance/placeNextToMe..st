accessing
placeNextToMe: aGameElement
	"Set the position of aGameElement to be somewhat next to me. For MovingGameElements that is the side they are facing."
	self placeAboveMe: aGameElement.
	(self orientation = #left) 
		ifTrue: [self placeLeftOfMe: aGameElement].
	(self orientation = #right) 
		ifTrue: [self placeRightOfMe: aGameElement].