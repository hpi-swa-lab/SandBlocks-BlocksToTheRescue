as yet unclassified
code

	| text args counter code |
	counter := 0.
	text := (self patches select: [:each | each type = #text]) 
				collect: [:each | each morph contents].
	args := self args.
	code := '['.
	1 to: args size do: [:each | code := code , (':arg' , each asString, ' ')].
	code := code , '| '.
	text 
		do: [:each | code := code , each]
		separatedBy: [counter := counter + 1.
			code := code , ' ' , 'arg' , (counter asString), ' '].
	code := code , ']'.
	^ code