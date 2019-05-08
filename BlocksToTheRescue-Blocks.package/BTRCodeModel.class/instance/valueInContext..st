as yet unclassified
valueInContext: aContext
	
	| originalContexts contextToUse result |
	originalContexts := aContext selector = #DoItIn:
		ifFalse: [{aContext}]
		ifTrue: [{aContext. aContext at: 1}]. "In Compiler evaluate and other DoIts the real context is a parameter of a DoIt-Context. The root cause is, that Compiler>>evaluate:in:to: does not really evaluate IN the given context, but just WITH the given context (getting the temps via #namedTempAt:). See Encoder>>init:notifying for implementation."
	
	contextToUse := BTRParameterContext alloy: originalContexts.			
	result := BTRCodeCompiler new evaluate: self code in: contextToUse to: self.
	contextToUse writeBackTempsTo: originalContexts.
	
	^ result