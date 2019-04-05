as yet unclassified
signal: signalerText onState: aBTRState andTransition: aBTRStateTransition 
	"Signal the occurrence of an exceptional condition with a specified textual description."

	^ self new
		state: aBTRState;
		transition: aBTRStateTransition;
		signal: signalerText