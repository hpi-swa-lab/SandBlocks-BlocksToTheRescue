block methods
askForBlockModel

	^ (BTRAbstractBlockModel userSelectBlockModelClass: 'Block Type?
(Erases previous method content)')
			ifNotNil: [:blockModelClass | 
				blockModelClass 
					on: self method methodClass
					selector: self method selector]