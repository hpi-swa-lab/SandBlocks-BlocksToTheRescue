*IconsForMessages-Strategies
methodFeatureLiterals: aCompiledMethod

	^ self selectIconUsing: #(
			methodLiteralsContainFlagged:
			methodLiteralsContainHalting:
			methodLiteralsContainShouldNotImplement:)
		with: aCompiledMethod literals