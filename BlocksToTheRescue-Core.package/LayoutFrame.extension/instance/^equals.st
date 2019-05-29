*BlocksToTheRescue-Core
= other

	^ self class = other class and: [self class instVarNames allSatisfy: [:each | (self instVarNamed: each) = (other instVarNamed: each)]]