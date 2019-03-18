styling
randomColorStyle: aText fromRanges: ranges

	ranges do: [ :range | aText
		addAttribute: (TextColor new color: Color random)
		from: range start
		to: range end].