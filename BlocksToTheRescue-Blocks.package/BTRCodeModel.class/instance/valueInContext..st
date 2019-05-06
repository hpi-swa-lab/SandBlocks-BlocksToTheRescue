as yet unclassified
valueInContext: aContext
	
	| contextToUse |
	contextToUse := aContext selector = #DoItIn:
		ifFalse: [aContext]
		ifTrue: [aContext at: 1]. "In Compiler evaluate and other DoIts the real context is a parameter of a DoIt-Context. The root cause is, that Compiler>>evaluate:in:to: does not really evaluate IN the given context, but just WITH the given context (getting the temps via #namedTempAt:). See Encoder>>init:notifying for implementation."
		
	^ Compiler new evaluate: self code in: contextToUse to: self