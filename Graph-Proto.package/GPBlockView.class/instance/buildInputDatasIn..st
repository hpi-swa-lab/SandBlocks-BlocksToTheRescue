building
buildInputDatasIn: aMorph

	self blockModel inputDatas doWithIndex:
		[:each :index | self buildInputDataPortViewFor: each at: index in: aMorph].