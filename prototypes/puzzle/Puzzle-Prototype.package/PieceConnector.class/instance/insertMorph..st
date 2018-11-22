accessing
insertMorph: aMorph
	"For some reason addMorph: behind: hast to be deferred. Nobody knows...."
	Project current addDeferredUIMessage: [self addMorph: aMorph behind: self puzzlePiece].
	self layoutChanged.
	