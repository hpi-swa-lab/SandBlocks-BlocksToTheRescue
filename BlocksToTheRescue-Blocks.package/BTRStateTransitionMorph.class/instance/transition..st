accessing
transition: aBTRStateTransition
	transition removeDependent: self.
	transition := aBTRStateTransition.
	transition addDependent: self.