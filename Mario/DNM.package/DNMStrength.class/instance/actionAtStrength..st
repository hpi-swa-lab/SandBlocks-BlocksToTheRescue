accessing
actionAtStrength: aStrength
	"By default, the action is doing nothing"
	^attackActionByDefenseStrength at: (aStrength name) ifAbsent: [[:defendingObject | ]]