state editing
createTransitionAt: aSymbol event: evt

	self 
		request: 'new transition name'
		initialAnswer: ''
		ifAccepted: [:name | | transition |
			transition := self state addReflexiveTransitionNamed: name.
			(self stateMachineMorph morphForTransition: transition) 
				startDock: aSymbol;
				endDock: aSymbol;
				updateVertices.
			self 
				grabTransition:	transition
				event: evt]
		ifCanceled: [].