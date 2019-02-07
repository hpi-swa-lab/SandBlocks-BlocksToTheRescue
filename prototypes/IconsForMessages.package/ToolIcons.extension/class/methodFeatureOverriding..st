*IconsForMessages-Strategies
methodFeatureOverriding: aCompiledMethod

	^ (aCompiledMethod literals
		includesAnyOf: #(shouldBeImplemented subclassResponsibility))
			ifTrue: [(aCompiledMethod methodClass
				isSelectorOverridden: aCompiledMethod selector)
					ifTrue: [#abstract]
					ifFalse: [#notOverridden]]