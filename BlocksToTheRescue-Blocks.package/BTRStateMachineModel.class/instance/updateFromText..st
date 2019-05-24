serialization
updateFromText: aText

	| data |
	data := SequenceableCollection readFrom: '{' asText, aText, '}'.
	self updateFrom: data.