accessing
transitionLabelLayer
	^ transitionLabelLayer ifNil: [transitionLabelLayer := self copyAsLayer]