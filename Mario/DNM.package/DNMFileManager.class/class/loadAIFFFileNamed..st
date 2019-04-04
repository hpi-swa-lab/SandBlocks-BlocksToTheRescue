loading
loadAIFFFileNamed: aFileName
	^SampledSound fromAIFFfileNamed: ((self fileStreamNamed: aFileName) fullName)
	