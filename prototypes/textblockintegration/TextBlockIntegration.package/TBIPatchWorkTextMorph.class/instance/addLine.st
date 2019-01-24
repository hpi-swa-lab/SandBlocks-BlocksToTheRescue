as yet unclassified
addLine

	| newline |
	newline := TBILine new.
	self lines 
		ifEmpty: [self background addMorph: newline] 
		ifNotEmpty: [self background addMorph: newline after: self currentLine].
	self lines add: newline afterIndex: self currentLineNumber.
	self currentLineNumber: self currentLineNumber + 1
	