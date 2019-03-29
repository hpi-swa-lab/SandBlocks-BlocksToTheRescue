*BlocksToTheRescue-Core
from: xString to: yString ignoreLineEndings: aBoolean

	ignoreLineEndings := aBoolean.
	xLines := self split: xString.
	yLines := self split: yString.
	self findMatches