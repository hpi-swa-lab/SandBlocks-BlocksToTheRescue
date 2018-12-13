as yet unclassified
addNewThreadWithExecutee: anExecutee onPromise: aPromise

	self processes add: [anExecutee execute. aPromise resolveWith: nil] fork.