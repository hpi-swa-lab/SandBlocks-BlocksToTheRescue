block methods
installBlockMethodFrom: aBTRBlockModel

	(BTRBlockMethod
		on: self method methodClass
		selector: self method selector
		parameterNames: nil
		model: aBTRBlockModel)
			signature: self contents; "We compile the complete method here (once more) just to keep the names of the arguments. Ugly hack, but works."
			install