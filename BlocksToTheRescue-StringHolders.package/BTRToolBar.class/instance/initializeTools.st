initialization
initializeTools

	self tools
		at: #insertBlock put: {
			#icon -> ToolIcons morph.
			#title -> 'Insert Block'.
			#toolTip -> 'Insert a new block or replace a matching selection by it'.
			#action -> #insertBlock};
		at: #close put: {
			#icon -> SystemWindow closeBoxImage.
			#title -> 'Close ToolBar'.
			#toolTip -> 'Close this tool bar'.
			#action -> #abandon}.