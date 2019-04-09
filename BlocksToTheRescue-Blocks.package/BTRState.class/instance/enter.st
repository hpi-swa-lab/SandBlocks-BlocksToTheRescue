running
enter

	^ self onEnterDo ifNotNil: [self onEnterDo valueWithPossibleArgs: {self. #enter}]