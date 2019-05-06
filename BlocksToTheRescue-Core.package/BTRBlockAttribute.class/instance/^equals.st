comparing
= other 
	^ (other class = self class) 
		and: [other blockModel == self blockModel] "We use == here to avoid coalescing of two blockModels, which are equeal but not the same, beeing next to each other."