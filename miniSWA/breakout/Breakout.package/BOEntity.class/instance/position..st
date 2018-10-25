accessing
position: aRelativePosition
	self tryChanged: #position with: aRelativePosition.
	position := aRelativePosition.
	"	min: 1@1 - (self extent / 2)
		max: (self extent / 2)."