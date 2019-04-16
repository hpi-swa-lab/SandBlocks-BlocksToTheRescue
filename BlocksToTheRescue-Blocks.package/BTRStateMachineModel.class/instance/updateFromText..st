fileIn/out
updateFromText: aText

	| preprocessedText data |
	preprocessedText := self preprocessText: aText.
	data := SequenceableCollection readFrom: '{' asText, preprocessedText, '}'.
	self updateFrom: data.