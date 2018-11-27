as yet unclassified
at: aPath

	^ [self resourceLoader at: self folder, aPath] 
		on: Error
		do: [ToolIcons no].