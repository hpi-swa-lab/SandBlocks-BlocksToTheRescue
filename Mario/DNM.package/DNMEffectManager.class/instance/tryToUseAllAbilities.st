accessing
tryToUseAllAbilities
	self removeUnusableAbilities.
	self abilities do: [:anAbility | anAbility tryToUseBy: (self affectedObject)].