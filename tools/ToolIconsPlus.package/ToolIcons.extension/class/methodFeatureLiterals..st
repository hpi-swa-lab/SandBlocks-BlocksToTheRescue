*ToolIconsPlus-Strategies
methodFeatureLiterals: method

	^ (method respondsTo: #literals)
		and: [self
			selectIconUsing: #(
				methodLiteralsContainFlagged:
				methodLiteralsContainHalting:
				methodLiteralsContainShouldNotImplement:)
			with: method literals]