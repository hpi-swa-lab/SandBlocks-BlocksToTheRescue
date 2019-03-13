identifier-analysis
bracketedRanges: ranges

	| depth bracketStack returnCollection |
	depth := 1.
	bracketStack := Stack new.
	returnCollection := SortedCollection sortBlock: [ :a :b | a key <= b key ].

	bracketStack push: (SHRange start: 0 end: 0 type: #methodCode).
	returnCollection add: (depth -> bracketStack top).
	ranges ifNotEmpty: [
		bracketStack top start: ranges first start.
		bracketStack top end: ranges last end.

		ranges do: [:range |
			((self isCloseSectionIdentifier: range type) 
			and: [bracketStack isEmpty not]) ifTrue: [
				returnCollection add: (depth -> (
					bracketStack pop
						end: range end;
						yourself))].
			depth := depth + (self depthChangeForIdentifier: range type).
			(self isOpenSectionIdentifier: range type) ifTrue: [
				bracketStack push: (SHRange
					start: range start
					end: range end
					type: (self sectionIdentifierFor: range type))]]].
	^ returnCollection