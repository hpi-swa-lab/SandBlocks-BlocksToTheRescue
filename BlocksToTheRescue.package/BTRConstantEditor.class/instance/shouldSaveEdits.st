testing
shouldSaveEdits

	^ hasUnacceptedEdits ifNil: [hasUnacceptedEdits := false]