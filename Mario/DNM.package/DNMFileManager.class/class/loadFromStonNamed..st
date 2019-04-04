loading
loadFromStonNamed: aFileName
"there's some kind of bug in either MultiByteFileStream or UTF8TextConverter  or somewhere else, which does not allow to read any complex characters such as $ö..."
	^self dataFolder fileNamed: aFileName do: [:stream | DNMSTON fromStream: stream]