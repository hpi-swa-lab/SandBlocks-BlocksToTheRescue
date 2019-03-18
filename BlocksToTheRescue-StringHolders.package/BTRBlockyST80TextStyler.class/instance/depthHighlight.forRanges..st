styling
depthHighlight: aText forRanges: ranges

	| bracketRanges colors |
	bracketRanges := (self bracketedRanges: ranges).
	colors := self
		colorsUpTo: bracketRanges last key
		"mode: #colorWheel."
		mode: #colorsMixed.
	bracketRanges do: [ :assoc | aText
		addAttribute: (TextColor new color: (colors at: (assoc key max: 1)))
		from: assoc value start
		to: assoc value end].