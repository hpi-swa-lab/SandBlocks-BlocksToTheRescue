*ToolIconsPlus-Strategies
strategyMethodFeatures: aMethodReference

	^ aMethodReference actualClass methodDict
		at: aMethodReference methodSymbol
		ifPresent: [:method | self
			selectIconUsing: #(
				methodFeatureMethodIcon:
				methodFeatureBreakpoint:
				methodFeatureLiterals:
				methodFeatureOverriding:
				methodFeatureReportableSlip:)
			with: method]