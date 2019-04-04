create level
createPlayerAbove: aLevelElementOrPosition
	"Places player on top of aLevelElementOrPosition or a levelElement, since newOfType:above: accepts these too"
	self player: (DNMLevelElement newOfType: #mario above: aLevelElementOrPosition).
	