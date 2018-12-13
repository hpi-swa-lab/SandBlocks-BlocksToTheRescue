as yet unclassified
killAllExceptMe

	self processes do:
		[:process | process ~=  Processor activeProcess ifTrue: [process terminate]].