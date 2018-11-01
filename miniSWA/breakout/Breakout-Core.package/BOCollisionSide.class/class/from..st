initialize-release
from: aSymbol

	^ aSymbol caseOf: {
		[#horizontal]->[BOHorizontalSide].
		[#vertical]->[BOVerticalSide].
		[#x]->[BOHorizontalSide].
		[#y]->[BOVerticalSide].
		[#left]->[BOLeftSide].
		[#right]->[BORightSide].
		[#top]->[BOTopSide].
		[#bottom]->[BOBottomSide]}