updating
applyViewData

	self stateMachineModel inlineViewData at: self class ifPresent: [:vd | vd
		at: #extent ifPresent: [:extent | self extent: extent];
		at: #states ifPresent: [:svd | svd
			keysAndValuesDo: [:stateName :viewData |
				self morphForState: stateName ifPresent: [:m |
					m applyViewData: viewData]]];
		at: #transitions ifPresent: [:tvd | tvd
			keysAndValuesDo: [:transitionAssoc :viewData |
				self morphForTransition: transitionAssoc ifPresent: [:m |
					m applyViewData: viewData]]]].