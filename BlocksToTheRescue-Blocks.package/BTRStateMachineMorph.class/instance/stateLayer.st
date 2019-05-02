accessing
stateLayer
	^ stateLayer ifNil: [stateLayer := self copyAsLayer]