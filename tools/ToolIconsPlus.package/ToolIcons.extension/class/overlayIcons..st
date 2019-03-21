*ToolIconsPlus
overlayIcons: aCollection

	^ aCollection
		ifEmpty: [self iconNamed: #blank]
		ifNotEmpty: [((aCollection
			select: [ :iconOrSymbol | iconOrSymbol isForm or: [iconOrSymbol isSymbol]])
			collect: [ :iconOrSymbol | iconOrSymbol isSymbol
				ifTrue: [(self iconNamed: iconOrSymbol) copy]
				ifFalse: [iconOrSymbol copy]])
			reduce: [ :flattenedForm :currentForm |
				flattenedForm overlayWith: currentForm]]