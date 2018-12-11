configuration
action

	^ action ifNil: [self defaultAction]