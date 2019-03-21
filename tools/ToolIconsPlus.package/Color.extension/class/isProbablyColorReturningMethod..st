*ToolIconsPlus
isProbablyColorReturningMethod: method

	^ method isCompiledMethod
		and: [(self isMethodClassVariableGetter: method)
			or: [self isMethodRGBColorConstant: method]]