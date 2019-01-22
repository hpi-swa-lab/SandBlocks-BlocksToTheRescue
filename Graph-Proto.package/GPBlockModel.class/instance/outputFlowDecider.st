configuration
outputFlowDecider

	^ outputFlowDecider ifNil: [self defaultOutputDecider]