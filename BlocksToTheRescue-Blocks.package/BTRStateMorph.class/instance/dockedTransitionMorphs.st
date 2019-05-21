accessing
dockedTransitionMorphs

	| transitions |
	transitions := self state allTransitions.
	^ (self stateMachineMorph transitionMorphsDict associations
		select: [:assoc | transitions includes: assoc key])
		collect: [:assoc | assoc value]