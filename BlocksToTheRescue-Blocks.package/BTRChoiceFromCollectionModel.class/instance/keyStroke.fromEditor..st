event-handling
keyStroke: aCharacter fromEditor: aListMorph

	aCharacter = $s ifTrue: [self changed: #accept].