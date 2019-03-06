*IconsForMessages-Strategies
strategyMethodFeatures: aMethodReference

	^ aMethodReference actualClass methodDict
		at: aMethodReference methodSymbol
		ifPresent: [:method | self
			selectIconUsing: #(
				methodFeatureConstantMethod:
				methodFeatureBreakpoint:
				methodFeatureLiterals:
				methodFeatureOverriding:
				methodFeatureReportableSlip:)
			with: method]