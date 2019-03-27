as yet unclassified
emitCodeForValue: stack encoder: encoder

	stack push: 1.
	encoder genPushLiteral: index.
	encoder nextPC.
	stack pop: 0.
	encoder genSendSpecial: 26 numArgs: 0.