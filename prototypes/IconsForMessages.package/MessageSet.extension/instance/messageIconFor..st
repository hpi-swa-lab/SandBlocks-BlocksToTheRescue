*IconsForMessages
messageIconFor: aMethodReference

	^ Browser
			messageIconFor: aMethodReference methodSymbol
			in: aMethodReference actualClass