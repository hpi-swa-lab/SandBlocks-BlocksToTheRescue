as yet unclassified
getDrop: aPort

	(aPort ~= self and: [self type matches: aPort type] and: [self block ~= aPort block])
		ifTrue: [(Connection
					from: self
					to: aPort ) openInWorld].