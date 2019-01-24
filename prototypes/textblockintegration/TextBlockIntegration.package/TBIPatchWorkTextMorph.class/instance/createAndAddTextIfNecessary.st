as yet unclassified
createAndAddTextIfNecessary

	| patch |
	(self currentLine isEmpty or: [self currentLine patches last type ~= #text])
		ifTrue: [patch := TBIPatch newText.
				self addPatch: patch inLine: self currentLineNumber]
		ifFalse: [patch := self currentLine patches last].
	
	^ patch