accessing
text: aText

	| preprocessedText data |
	preprocessedText := self preprocessText: aText.
	data := Collection readFrom: '{' asText, preprocessedText, '}'.
	self stateMachineModel updateFrom: data.
	self changed: #text.