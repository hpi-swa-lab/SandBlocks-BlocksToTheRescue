event filtering
handleKeyboardEvent: evt

	evt keyCharacter caseOf: {
		[Character cr] -> [| patch |
							self addLine.
							patch := self createAndAddTextIfNecessary.
							self focusPatch:patch.
							evt ignore].
		[Character tab] -> [| patch |
							patch := self createAndAddTextIfNecessary.
							self focusPatch: patch.
							evt ignore].
		[Character arrowUp] -> [self goToLine: self currentLineNumber - 1. 
							evt hand newKeyboardFocus: self currentLine firstTextPatch morph.
							evt ignore].
		[Character arrowDown] -> [self goToLine: self currentLineNumber + 1.
								evt hand newKeyboardFocus:  self currentLine firstTextPatch morph.
								evt ignore]
	} otherwise: [].
	
	evt commandKeyPressed 
		ifTrue: [evt keyCharacter = $b
					ifTrue: [ | blockClass |
						blockClass := self chooseBlockType.
						blockClass ifNotNil: [self 
								addPatch: (TBIPatch newBlock: blockClass new)
								inLine: self currentLineNumber]]]