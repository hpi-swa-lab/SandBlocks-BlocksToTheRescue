block methods
askForBlockModel
	
	^ (BTRAbstractBlockModel userSelectBlockModelClass: 'Block Type?
(Erases previous method content)')
			ifNotNil: [:blockModelClass | 
				(BTRBlockMethod
					on: self method methodClass
					selector: self method selector
					parameterNames: nil
					model: blockModelClass new)
						signature: self contents; "We compile the complete method here (once more) just to keep the names of the arguments. Ugly hack, but works."
						yourself]