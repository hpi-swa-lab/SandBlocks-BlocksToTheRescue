accessing
tryToUseAbility: anAbilitySymbol
"uses an ability with this selector if there is one. "
	|requestedAbility|
	self removeUnusableAbilities..
	requestedAbility := self abilities detect: [:anAbility | anAbility symbolicName = anAbilitySymbol ] ifNone: [^self]. 
	requestedAbility tryToUseBy: (self affectedObject).