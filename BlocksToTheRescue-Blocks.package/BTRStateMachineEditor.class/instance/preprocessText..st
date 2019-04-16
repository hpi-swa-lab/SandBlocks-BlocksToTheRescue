accessing
preprocessText: aText

	| intervals writeStream readStream |
	intervals := aText string allRangesOfRegexMatches: '#([0-9]+\w*)\s'.
	writeStream := WriteStream on: Text new.
	readStream := ReadStream on: aText.
	intervals do: [:each |
		writeStream
			nextPutAll: (readStream upToPosition: each start);
			nextPutAll: $' asText;
			nextPutAll: (readStream upToPosition: each stop - 1);
			nextPutAll: $' asText].
	writeStream nextPutAll: (readStream upToEnd).
	^ writeStream contents