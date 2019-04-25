*BlocksToTheRescue-Core
unstyled

	| result |
	result := Text fromString: self string.
	self runs withStartStopAndValueDo: [:start :stop :attribs |
		(attribs select: #shoutShouldPreserve)
			do: [:attribute | result addAttribute: attribute from: start to: stop]].
	result runs coalesce.
	^ result