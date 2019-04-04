loading
loadASW15LevelNamed: aFileName
	^self dataFolder fileNamed: aFileName do: [:stream | STON fromStream: stream]