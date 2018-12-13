building
buildInputDatas

	self blockModel inputDatas doWithIndex:
		[:each :index | self buildInputDataPortViewFor: each at: index].