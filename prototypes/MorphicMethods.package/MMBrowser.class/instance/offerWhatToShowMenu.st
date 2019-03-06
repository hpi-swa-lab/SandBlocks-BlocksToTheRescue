as yet unclassified
offerWhatToShowMenu
	"Offer a menu governing what to show"
	| builder menuSpec |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self contentsSymbolQuints do: [:aQuint | aQuint == #-
		ifTrue: [menuSpec addSeparator]
		ifFalse: [
			| item |
			item := menuSpec add: (self perform: aQuint third) 
					target: self selector: aQuint second argumentList: #().
			item help: aQuint fifth.
		].
	].
	(self methodReference compiledMethod isKindOf: BTRConstantMethod) ifTrue: [
		menuSpec 
			add: '<yes> xyz' , 500 atRandom asString
			target: self
			selector: #showTool
			argumentList: #()].

	builder runModal: (builder open: menuSpec).