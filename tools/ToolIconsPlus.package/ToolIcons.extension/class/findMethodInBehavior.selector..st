*ToolIconsPlus
findMethodInBehavior: aBehavior selector: aSymbol

	^ aBehavior methodDict 
		at: aSymbol
		ifPresent: [:method | method]
		ifAbsent: [aBehavior superclass ifNotNil: [:superClass |
				self findMethodInBehavior: superClass selector: aSymbol]]