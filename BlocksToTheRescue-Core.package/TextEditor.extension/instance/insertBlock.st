*BlocksToTheRescue-Core
insertBlock

	self selection ifNotEmpty: [
		self evaluateSelectionAndDo: [:result |
			result ifNotNil: [self morph 	handleEdit: [ | text |
				text := (BTRBlockAttribute asTextFrom: result).
				text embeddedBlockModels first originalText: self selection. 
				self replaceSelectionWith: text.
				self selectInterval: (self startIndex to: self startIndex + 1)].
				^ self]]].

	(BTRAbstractBlockModel userSelectBlockModelClass: 'Select block to insert')
		ifNotNil: [:modelClass | self
			insertAndSelectText: (BTRBlockAttribute asTextFrom: modelClass new)
			at: self stopIndex]