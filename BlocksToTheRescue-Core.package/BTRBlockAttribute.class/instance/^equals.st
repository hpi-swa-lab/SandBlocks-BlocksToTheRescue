comparing
= other 
	^ (other class == self class) 
		and: [other anchoredBlock == self anchoredBlock] 