removing
removeRow

	self rows removeLast.
	self columns do: [:column | column removeLast].