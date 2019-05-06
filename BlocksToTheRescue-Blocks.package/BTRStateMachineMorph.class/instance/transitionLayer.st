accessing
transitionLayer
	^ transitionLayer ifNil: [transitionLayer := self copyAsLayer]