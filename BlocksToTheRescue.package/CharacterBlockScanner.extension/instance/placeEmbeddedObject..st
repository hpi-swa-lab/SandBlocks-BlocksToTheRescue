*BlocksToTheRescue
placeEmbeddedObject: anchoredMorph
	
	| width horizontalPadding |
	anchoredMorph textAnchorType = #paragraph
		ifTrue: [^ true].
	"horizontalPadding := anchoredMorph"
	width := anchoredMorph width.
	specialWidth := width.
	(destX + width > characterPoint x) ifTrue: [^false].
	destX := destX + width + kern.
	^ true