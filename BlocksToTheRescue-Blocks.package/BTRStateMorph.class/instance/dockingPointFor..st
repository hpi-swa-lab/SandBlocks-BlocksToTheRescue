event handling
dockingPointFor: aPoint

	^ self dockingMorphDict keys
		detect: [:symbol | self is: aPoint overDockingPoint: symbol]
		ifFound: [:symbol | symbol]
		ifNone: [(self containsPoint: aPoint)
			ifTrue: [| degree alpha |
				degree := (aPoint - self center) degrees.
				alpha := self extent degrees.
				{#bottom -> (alpha to: 180 - alpha).
				#left -> (180 - alpha to: 180 + alpha).
				#top -> (180 + alpha to: 360 - alpha)}
					detect: [:intervalAssoc | intervalAssoc value rangeIncludes: degree]
					ifFound: [:ia | ia key]
					ifNone: [#right]]
			ifFalse: [nil]].