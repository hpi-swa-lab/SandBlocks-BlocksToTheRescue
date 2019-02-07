*IconsForMessages-Strategies
strategyMethodFeatures: aMethodReference

	^ aMethodReference actualClass methodDict
		at: aMethodReference methodSymbol
		ifPresent: [:method | self
			selectIconUsing: #(
				methodFeatureBreakpoint:
				methodFeatureLiterals:
				methodFeatureMorphMessage:
				methodFeatureOverriding:
				methodFeatureReportableSlip:)
			with: method]