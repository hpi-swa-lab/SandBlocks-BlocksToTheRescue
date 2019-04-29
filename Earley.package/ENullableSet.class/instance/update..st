updating
update: anEGrammer

	anEGrammer rulesDo: [:each | (self isNullable: each) 
										ifTrue: [self add: each name]]