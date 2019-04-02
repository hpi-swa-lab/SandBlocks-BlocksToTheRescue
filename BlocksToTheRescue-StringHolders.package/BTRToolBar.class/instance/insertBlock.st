actions
insertBlock

	self canInsertBlock
		ifTrue: [ | textMorph |
			textMorph := ActiveHand keyboardFocus.
			textMorph editor insertBlock]
		ifFalse: [(BTRAbstractBlockModel userSelectBlockModelClass: 'Select block to insert')
			ifNotNil: [ :modelClass | ActiveHand grabMorph:
				(modelClass new inlineView
					position: ActiveHand position;
					yourself)]].