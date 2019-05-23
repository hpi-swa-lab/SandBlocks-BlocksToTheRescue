*BlocksToTheRescue-Core
stack

	| stack |
	stack := self.
	^ (Generator on: [:g |
		[stack notNil] whileTrue: [|x|
			x := stack printString.
			stack := stack sender.
			g yield: x]])
		contents