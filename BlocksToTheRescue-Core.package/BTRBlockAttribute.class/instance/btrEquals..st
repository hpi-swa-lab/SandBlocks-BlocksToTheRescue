comparing
btrEquals: other 
	^ (other class = self class) 
		and: [other blockModel = self blockModel] 