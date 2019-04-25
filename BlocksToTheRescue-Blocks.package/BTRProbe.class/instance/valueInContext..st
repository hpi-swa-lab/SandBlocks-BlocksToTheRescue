interface-evaluating
valueInContext: aContext

	^ Compiler new evaluate: self code in: aContext to: self