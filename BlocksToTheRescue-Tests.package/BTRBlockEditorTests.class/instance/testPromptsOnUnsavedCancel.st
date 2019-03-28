tests
testPromptsOnUnsavedCancel

	self makeChange.
	self should: [self changed: #wantToChange]
		raise: ProvideAnswerNotification.