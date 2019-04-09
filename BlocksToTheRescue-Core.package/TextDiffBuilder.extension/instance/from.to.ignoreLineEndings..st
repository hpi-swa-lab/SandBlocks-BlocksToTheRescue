*BlocksToTheRescue-Core
from: xString to: yString ignoreLineEndings: aBoolean

	ignoreLineEndings := aBoolean.
	xLines := self split: xString asBTRText.
	yLines := self split: yString asBTRText.
	self findMatches