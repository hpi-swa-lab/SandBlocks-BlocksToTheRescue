*BlocksToTheRescue-Core
encodeBlock

	^ MessageNode new
				receiver: (encoder encodeLiteral: self advance)
				selector: #value
				arguments: OrderedCollection new
				precedence: 1
				from: encoder
				sourceRange: (hereMark to: hereMark).