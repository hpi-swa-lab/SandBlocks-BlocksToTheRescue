comparing
mouseDown: evt
	
	| blockClass |
	blockClass := BTRAbstractBlockModel userSelectBlockModelClass: 'Select Block to be wrap'.
	
	evt hand mouseFocus: nil. "Wrapper does not give away the focus after selction by himself, so we have to force him."
	
	blockClass ifNotNil: [self wrappedBlock: blockClass previewInstance].
	