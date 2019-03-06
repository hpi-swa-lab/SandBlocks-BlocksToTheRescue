as yet unclassified
selectionAsStreamWithContext: aContext
	"Answer a ReadStream on the text in the paragraph that is currently  selected."

	^ReadStream
		on: self splitSelection
		from: self startIndex
		to: self stopIndex + self addedCharacters - 1