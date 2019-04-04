accessing
removeUnusableAbilities
	self abilities removeAllSuchThat: [:anAbility | anAbility isUsable not].