enumerating
onIndexesDo: aBlock
		
	self 
		doWithIndex: [:set :i | set 
								doWithIndex: [:state :j | aBlock value: i value: j]]