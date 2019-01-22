defaults
defaultOutputDecider

	^ [:outputFlows | outputFlows at: 1 ifAbsent: []]