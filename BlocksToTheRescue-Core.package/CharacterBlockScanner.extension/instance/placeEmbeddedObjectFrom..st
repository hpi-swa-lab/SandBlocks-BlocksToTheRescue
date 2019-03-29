*BlocksToTheRescue-Core
placeEmbeddedObjectFrom: aTextAttribute
	
	| anchoredMorph width |
	anchoredMorph := aTextAttribute anchoredMorph.
	anchoredMorph textAnchorType = #paragraph ifTrue: [^ true].
	width := anchoredMorph width + aTextAttribute horizontalPadding.
	
	"specialWidth := width. <-- Legacy code, the class comment lies!"
	lastCharacterWidth := width. "This is correct!"
	
	(destX + width > characterPoint x) ifTrue: [^false].
	destX := destX + width + kern.
	^ true