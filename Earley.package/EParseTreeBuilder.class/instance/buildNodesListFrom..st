as yet unclassified
buildNodesListFrom: anEStatesSet

	self nodesList: (anEStatesSet 
		collectWithIndex: [:set :index | set 
			collect: [:state | ENode 
								forState: state 
								starting: index 
								named: (self grammar nameTo: state)
								grammar: self grammar]])