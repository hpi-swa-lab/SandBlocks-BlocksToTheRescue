user input
editCode

	| newCode |
	newCode := UIManager default
		request: 'Edit the code'
		initialAnswer: self code.
	"UIManager returns empty string on cancel"
	newCode ifNotEmpty: [self code: newCode]