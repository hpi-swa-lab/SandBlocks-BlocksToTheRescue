updating
removeColumnToAdjustToValue

	self columns removeLast.
	self rows do: [:row | row removeLast].