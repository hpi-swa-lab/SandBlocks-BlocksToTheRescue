block methods
askForBlockModel
	
	^ (BTRAbstractBlockModel userSelectBlockModelClass: 'Block Type?
(Erases previous method content)')
		ifNotNil: [:theClass | theClass new]