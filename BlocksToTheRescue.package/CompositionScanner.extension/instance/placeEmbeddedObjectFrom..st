*BlocksToTheRescue
placeEmbeddedObjectFrom: aTextAttribute

	| anchoredMorph width |
	anchoredMorph := aTextAttribute anchoredMorph.
	anchoredMorph textAnchorType = #paragraph ifTrue: [^ true].
	"If it is not anchored at the paragraph we assume that it is inline."
	width := anchoredMorph width + aTextAttribute horizontalPadding.
	(destX + width > rightMargin and: [(leftMargin + width) <= rightMargin or: [lastIndex > line first]])
		ifTrue: ["Won't fit, but would on next line"
				^ false].
	destX := destX + width + kern.
	baseline := baseline max: (anchoredMorph height / 2) floor + (aTextAttribute embeddedObjectPadding at: #top).
	lineHeight := lineHeight max: anchoredMorph height + aTextAttribute verticalPadding.
	^ true