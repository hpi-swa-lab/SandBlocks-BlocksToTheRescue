construction
add: aStringLabel action: aSelector icon: anIcon
	"Since adding an action with an icon is not implemented by MenuMorph, we have do do it ourselves."
	self
		add: aStringLabel
		target: self defaultTarget
		selector: aSelector
		argumentList: Array empty
		icon: anIcon.