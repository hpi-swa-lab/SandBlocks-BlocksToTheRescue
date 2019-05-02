tests
testTabbing

	| textField |
	textField := PluggableTextMorphPlus new.
	textField
		setText: ('{1}foo{2}{1}bar' format: {''. String cr}) asText;
		selectAll.
	self tabKeyEvents
		do: [:evt | textField handleFocusEvent: evt].
	self assert: ('{1}foo{2}{1}bar' format: {String tab. String cr}) equals: textField text string.