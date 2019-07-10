as yet unclassified
return: result "to all outgoing"

	(result isArray
		ifFalse: [ {result} ]
		ifTrue: [ result ]) withIndexDo: [:each :index | self activateEdgeAt: index with: each]