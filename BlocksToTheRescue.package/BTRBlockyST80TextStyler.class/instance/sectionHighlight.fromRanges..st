styling
sectionHighlight: aText fromRanges: ranges

	| bracketStack |
	bracketStack := Stack new.

	ranges do: [ :range |
		(self isOpenSectionIdentifier: range type) ifTrue: [
			bracketStack push: (TextColor new color: Color random)].
		bracketStack isEmpty ifFalse: [aText
			addAttribute: bracketStack top
			from: range start
			to: range end].
		(self isCloseSectionIdentifier: range type) ifTrue: [
			bracketStack isEmpty ifFalse: [bracketStack pop]]].