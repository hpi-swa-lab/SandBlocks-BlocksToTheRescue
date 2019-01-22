building
buildOutputDatas

	self blockModel outputDatas doWithIndex:
		[:each :index | self buildOutputDataPortViewFor: each at: index].