*BlocksToTheRescue-Core
initPattern: aStringOrText return: aBlock

	| result text |
	text := aStringOrText asBTRText.
	self
		init: (ReadStream on: text)
		cue: (CompilationCue source: text)
		failBlock: [^ nil].
	encoder := self.
	result := aBlock
				value: (self pattern: false inContext: nil).
	encoder := failBlock := nil.
	
	^ result