cleanUp
fixToolIconsClass

	ToolIcons class removeCategory: #accessing.
	ToolIcons class removeCategory: #private.
	ToolIcons class removeCategory: #support.
	ToolIcons class removeCategory: #'*SUnitTools-icons'.
	ToolIcons class organization removeEmptyCategories.
	ToolIcons clearCache.