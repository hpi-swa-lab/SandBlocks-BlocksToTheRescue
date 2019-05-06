tests
testUnixVMSpecificShiftTabbing

	| textField |
	(#('unix') includes: Smalltalk platformName)
		ifFalse: [^ self "this test is for linux only"].

	textField := TextMorph new.
	textField
		newContents: ('{1}foo{2}{1}bar' format: {String tab. String cr}) asText;
		selectAll.
	textField handleFocusEvent: (KeyboardEvent new
		setType: #keyDown buttons: 8 position: nil keyValue: 9 hand: ActiveHand stamp: nil).
	self assert: ('{1}foo{2}{1}bar' format: {''. String cr}) equals: textField text string.