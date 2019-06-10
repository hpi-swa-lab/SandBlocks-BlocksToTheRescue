updating
update: anAspect
	
	"For bubbling unaccepted edits"
	anAspect = self block
		ifTrue: [ self changed ].
		
	"For bubbling saves"
	anAspect = #accept
		ifTrue: [self changed: self with: #accept ].