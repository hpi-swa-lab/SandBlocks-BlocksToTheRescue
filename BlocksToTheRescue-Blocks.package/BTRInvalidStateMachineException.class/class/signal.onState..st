as yet unclassified
signal: signalerText onState: aBTRState
	"Signal the occurrence of an exceptional condition with a specified textual description."

	^ self new
		state: aBTRState;
		signal: signalerText