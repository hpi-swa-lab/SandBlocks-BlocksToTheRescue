*BlocksToTheRescue-Core
mirroredOn: aSymbol

	aSymbol = #x ifTrue: [^ self mirroredOnXAxis].
	aSymbol = #y ifTrue: [^ self mirroredOnYAxis].
	self error: 'cannot mirror around ', aSymbol, ' axis'.