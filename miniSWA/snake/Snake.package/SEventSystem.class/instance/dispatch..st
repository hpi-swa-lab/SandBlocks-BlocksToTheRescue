dispatching
dispatch: aSEvent

	(self list at: aSEvent class ifAbsent: [{}]) 
		do: [:each | aSEvent dispatchOn: each].