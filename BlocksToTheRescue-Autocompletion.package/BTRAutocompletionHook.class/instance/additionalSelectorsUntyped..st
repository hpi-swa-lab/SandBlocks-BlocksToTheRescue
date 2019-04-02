hook
additionalSelectorsUntyped: contextClass

	^ (BTRAbstractBlockModel allBlockClasses)
		collect: [:each |
			BTRBlockEntry
				contents: each
				type: #pragmaKeyword]