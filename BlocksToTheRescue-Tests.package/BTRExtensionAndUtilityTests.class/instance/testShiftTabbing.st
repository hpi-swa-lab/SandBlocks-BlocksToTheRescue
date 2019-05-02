tests
testShiftTabbing

	| textField |
	textField := PluggableTextMorphPlus new.
	textField
		setText: ('{1}foo{2}{1}bar' format: {String tab. String cr}) asText;
		selectAll.
	self shiftTabKeyEvents
		do: [:evt | textField handleFocusEvent: evt].
	self assert: ('{1}foo{2}{1}bar' format: {''. String cr}) equals: textField text string.