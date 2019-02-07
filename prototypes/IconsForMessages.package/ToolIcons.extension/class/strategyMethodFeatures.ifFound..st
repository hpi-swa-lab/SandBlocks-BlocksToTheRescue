*IconsForMessages-Strategies
strategyMethodFeatures: aMethodReference ifFound: aBlock

	^ self selectIconUsing: #(
			methodFeatureBreakpoint:
			methodFeatureLiterals:
			methodFeatureMorphMessage:
			methodFeatureOverriding:
			methodFeatureReportableSlip:)
		with: (aMethodReference actualClass >> aMethodReference methodSymbol)