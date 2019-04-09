running
leave

	^ self onLeaveDo ifNotNil: [self onLeaveDo valueWithPossibleArgs: {self. #leave}]