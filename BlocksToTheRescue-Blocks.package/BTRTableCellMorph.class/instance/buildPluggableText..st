initialization
buildPluggableText: aSpec

	| builder |
	builder := ToolBuilder default.
	aSpec stylerClass ifNotNil: [:c | self styler: (c new view: self)].	
	self
		on: aSpec model
		text: aSpec getText 
		accept: aSpec setText
		readSelection: aSpec selection 
		menu: aSpec menu.
	aSpec font ifNotNil: [:f | self font: f].
	
	self readOnly: aSpec readOnly.
	self editTextSelector: aSpec editText.
	self wantsFrameAdornments: aSpec indicateUnacceptedChanges.

	self askBeforeDiscardingEdits: aSpec askBeforeDiscardingEdits.
	self setProperty: #alwaysAccept toValue: aSpec askBeforeDiscardingEdits not.

	aSpec softLineWrap ifNotNil: [:b | self wrapFlag: b].

	self isAutoFit
		ifTrue: [self hideHScrollBarIndefinitely]
		ifFalse: [self showHScrollBarOnlyWhenNeeded].
	
	builder register: self id: aSpec name.
	self getColorSelector: aSpec color.
	self getTextColorSelector: aSpec textColor.
	builder buildHelpFor: self spec: aSpec.
	 
	builder setFrame: aSpec frame in: self.
	builder setLayoutHintsFor: self spec: aSpec.