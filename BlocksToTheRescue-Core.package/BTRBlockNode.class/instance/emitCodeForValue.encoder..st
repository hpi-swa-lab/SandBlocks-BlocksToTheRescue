code generation
emitCodeForValue: stack encoder: encoder

	self pushBlockModel: stack encoder: encoder.
	self pushThisContext: stack encoder: encoder.
	pc := encoder nextPC.
	self pushSelector: stack encoder: encoder.