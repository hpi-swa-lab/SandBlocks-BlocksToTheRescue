accessing
shift
	| last |
	last := self list removeLast.
	self list addFirst: last.
	^ last.