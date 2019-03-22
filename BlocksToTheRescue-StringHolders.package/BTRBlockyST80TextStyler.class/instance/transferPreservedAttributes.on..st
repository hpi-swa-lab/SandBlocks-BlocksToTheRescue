styling
transferPreservedAttributes: oldRuns on: aText

	oldRuns withStartStopAndValueDo: [ :start :stop :attributes |
		(attributes anySatisfy: [ :each | each shoutShouldPreserve])
			ifTrue: [attributes do: [ :each |
				aText addAttribute: each from: start to: stop]]].