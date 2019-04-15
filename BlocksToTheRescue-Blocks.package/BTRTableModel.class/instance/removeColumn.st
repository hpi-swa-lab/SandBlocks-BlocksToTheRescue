removing
removeColumn

	self columns removeLast.
	self rows do: [:row | row removeLast].
	self valueRemoveColumn.