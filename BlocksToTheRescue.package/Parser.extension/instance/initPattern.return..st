*BlocksToTheRescue
initPattern: t1 return: t2 
	| t3 |
	self
		init: (ReadStream on: t1)
		cue: (CompilationCue source: t1)
		failBlock: [^ nil].
	encoder := self.
	t3 := t2
				value: (self pattern: false inContext: nil).
	encoder := failBlock := nil.
	^ t3