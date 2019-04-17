*BlocksToTheRescue-Core
unblock
	
	| selection |
	selection := self selection.
	selection ifNotEmpty: [ | blockModels positions newText |
		newText := selection.
		blockModels := selection embeddedBlockModels.
		positions := selection blockModelPositions.
		blockModels ifNotEmptyDo: [:models | models reverseWith: positions do: [:model :position |
				model originalText ifNotNil: [newText replaceFrom: position to: position with: model originalText]]].
		self replaceSelectionWith: newText].