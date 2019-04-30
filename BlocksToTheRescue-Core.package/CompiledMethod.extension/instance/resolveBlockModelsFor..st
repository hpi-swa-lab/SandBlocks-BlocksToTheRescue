*BlocksToTheRescue-Core
resolveBlockModelsFor: aText

	| textPositions newText |
	textPositions := aText blockModelPositions.
	self blockModels size ~= textPositions size
		ifTrue: [^ aText. "Cannot resolve, mismatched number of BlockModels"].
	newText := aText copy.
	newText filterAttributes: [:attr | attr hasBTRBlockModel not].
	self blockModels doWithIndex: [:model :index | | position |
		position := (textPositions at: index).
		newText
			addAttribute: (model copy as: BTRBlockAttribute "Copy to conform to block lifecycle")
			from: position
			to: position].
	^ newText