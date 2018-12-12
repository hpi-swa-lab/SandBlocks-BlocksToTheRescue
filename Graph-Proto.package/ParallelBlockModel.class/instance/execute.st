as yet unclassified
execute 

	| processes promises counter nextBlock |
	counter := 0.
	processes := OrderedCollection new.
	promises := OrderedCollection new.
	self firstBlocks doWithIndex: [:each :index | | promise |
		promise := Promise new.
		promise whenResolved: [:value | 
			counter := counter + 1.
			(Compiler evaluate: (counter asString , self perl conditionText contents asString))
				ifTrue: [					
						processes do: [:process | process ~=  Processor activeProcess
													ifTrue: [process terminate]].
						
						nextBlock := self nextBlock.
						nextBlock
							ifNotNil: [nextBlock execute]]].
		processes add: [each execute. promise resolveWith: index] fork].
	
	