as yet unclassified
emitCodeForValue: stack encoder: encoder

	stack push: 1.
	encoder genPushLiteral: index.
	pc := encoder nextPC.
	encoder genSendSpecial: 26 numArgs: 0.		"send: value"