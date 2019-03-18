comparing
= other 
	^ (other class == self class) 
		and: [other anchoredClass == self anchoredClass]