updating
updateInlineView

	| inlineView |
	inlineView := self blockModel inlineView.
	inlineView attachBlockModel: self blockModel.
	self addMorph: inlineView.
	inlineView position: self position.
	"Only remove the morphs after adding the new 
	inlineView so that there is always at least one submorph. 
	See: #removedMorph:"
	self submorphs reverseDo: [:submorph | 
		(submorph ~= inlineView)
			ifTrue: [submorph abandon]].