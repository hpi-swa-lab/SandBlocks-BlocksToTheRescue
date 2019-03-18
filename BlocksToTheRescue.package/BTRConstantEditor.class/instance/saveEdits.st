accessing
saveEdits

	^ hasUnacceptedEdits ifNil: [hasUnacceptedEdits := false]