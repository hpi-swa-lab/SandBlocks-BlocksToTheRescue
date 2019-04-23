accessing
promptForCancel

	(self confirm: 'Changes have not been saved.
Is it OK to cancel those changes?' translated)
		ifTrue: [ self changed: #clearUserEdits ]