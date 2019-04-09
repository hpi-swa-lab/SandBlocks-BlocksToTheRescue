*BlocksToTheRescue-Core
unstyledTextFrom: aText
	"Re-implemented so that TextActions are not removed from aText"
	| answer |	
	answer := super unstyledTextFrom: aText.
	aText runs withStartStopAndValueDo: [:start :stop :attribs |
		(attribs select: #shoutShouldPreserve)
			do: [:attribute |
				answer addAttribute: attribute from: start to: stop]].
	answer runs coalesce.
	^answer