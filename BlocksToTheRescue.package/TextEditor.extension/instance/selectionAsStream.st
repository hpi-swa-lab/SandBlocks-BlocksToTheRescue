*BlocksToTheRescue
selectionAsStream
	"Answer a ReadStream on the text in the paragraph that is currently  selected."

	^ReadStream
		on: paragraph text
		from: self startIndex
		to: self stopIndex - 1