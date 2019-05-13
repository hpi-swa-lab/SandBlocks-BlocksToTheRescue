nil
code: aText

	self haltOnce.
	super code: aText.
	self updateProbes.