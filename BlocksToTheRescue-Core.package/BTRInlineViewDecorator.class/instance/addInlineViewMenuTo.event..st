menu
addInlineViewMenuTo: aMenu event: anEvent

	| inlineView |
	inlineView := self submorphs first.
	inlineView wantsYellowButtonMenu
		ifTrue: [inlineView addNestedYellowButtonItemsTo: aMenu event: anEvent].