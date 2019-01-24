as yet unclassified
composeEachRectangleIn: rectangles

	| myLines lastChar |

	1 to: rectangles size do: [:i | 
		currCharIndex <= theText size ifFalse: [^false].
		myLines := scanner 
			composeFrom: currCharIndex 
			inRectangle: (rectangles at: i)				
			firstLine: isFirstLine 
			leftSide: i=1 
			rightSide: i=rectangles size.
		lastChar := self addLines: myLines.
		(CharacterSet crlf includes: lastChar) ifTrue: [^#cr].
		wantsColumnBreaks ifTrue: [
			lastChar = Character characterForColumnBreak ifTrue: [^#columnBreak].
		].
	].
	^false