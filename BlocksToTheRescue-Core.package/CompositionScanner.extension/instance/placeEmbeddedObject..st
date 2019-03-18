*BlocksToTheRescue-Core
placeEmbeddedObject: anchoredMorph
	| width descent |
	anchoredMorph textAnchorType = #paragraph ifTrue: [^ true].
	"If it is not anchored at the paragraph we assume that it is inline."
	width := anchoredMorph width.
	(destX + width > rightMargin and: [(leftMargin + width) <= rightMargin or: [lastIndex > line first]])
		ifTrue: ["Won't fit, but would on next line"
				^ false].
	destX := destX + width + kern.
	descent := lineHeight - baseline.
	baseline := baseline max: (anchoredMorph height / 2) floor.
	lineHeight := lineHeight max: anchoredMorph height.
	^ true