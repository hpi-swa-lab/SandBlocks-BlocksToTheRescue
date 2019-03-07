*IconsForMessages-Strategies
methodFeatureOverriding: method

	^ (method respondsTo: #hasBreakpoint)
		and: [(method literals
			includesAnyOf: #(shouldBeImplemented subclassResponsibility))
				ifTrue: [(method methodClass
					isSelectorOverridden: method selector)
						ifTrue: [#abstract]
						ifFalse: [#notOverridden]]]