as yet unclassified
valueInContext: aContext
	
	| originalContexts contextToUse result index |
	contextToUse := aContext selector = #DoItIn:
		ifFalse: [originalContexts := {aContext}. aContext copy]
		ifTrue: [originalContexts := {aContext. aContext at: 1}. BTRParameterContext alloy: aContext and: (aContext at: 1)]. "In Compiler evaluate and other DoIts the real context is a parameter of a DoIt-Context. The root cause is, that Compiler>>evaluate:in:to: does not really evaluate IN the given context, but just WITH the given context (getting the temps via #namedTempAt:). See Encoder>>init:notifying for implementation."
		
	result := BTRCodeCompiler new evaluate: self code in: contextToUse to: self.
	index := 0.
	originalContexts do: 
		[:each | 1 to: each numTemps do: 
			[:localIndex | 
				index := index + 1. 
				each namedTempAt: localIndex put: (contextToUse namedTempAt: index)]].
	^ result