updating
updateText

	colorStringMorph contents: self color asHTMLColor.
	colorStringMorph center: self center.

	colorStringMorph color: (self color luminance < 0.35
		ifTrue: [Color white]
		ifFalse: [Color black]).