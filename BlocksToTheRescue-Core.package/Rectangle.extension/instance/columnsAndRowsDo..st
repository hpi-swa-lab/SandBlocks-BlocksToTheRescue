*BlocksToTheRescue-Core
columnsAndRowsDo: aBlockClosure

	(self top to: self bottom) do: [ :y |
		(self left to: self right) do: [ :x |
			aBlockClosure value: x value: y]].