as yet unclassified
initializeDataWith: aCollection

	aCollection withIndexDo:
		[:each :index | | port |
			port := (self outputDatas at: index).
			port ifNotNil: [self setDataAt: port to: each]].