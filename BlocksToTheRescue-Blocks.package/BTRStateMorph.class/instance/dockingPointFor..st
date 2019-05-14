event handling
dockingPointFor: aPoint

	^ self dockingMorphDict keys
		detect: [:symbol | self is: aPoint overDockingPoint: symbol]
		ifFound: [:symbol | symbol]
		ifNone: [(self bounds containsPoint: aPoint)
			ifTrue: [| degree |
				degree := (aPoint - self center) degrees.
				{#bottom -> (45 to: 135). #left -> (135 to: 225). #top -> (225 to: 315)}
					detect: [:intervalAssoc | intervalAssoc value rangeIncludes: degree]
					ifFound: [:ia | ia key]
					ifNone: [#right]]
			ifFalse: [nil]].