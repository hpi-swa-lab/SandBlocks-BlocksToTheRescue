initialization
initializeTools

	self tools
		at: #insertBlock put: {
			#icon -> ToolIcons morph.
			#toolTip -> 'Insert a new block'.
			#action -> #toggleInsertBlockSelector}.