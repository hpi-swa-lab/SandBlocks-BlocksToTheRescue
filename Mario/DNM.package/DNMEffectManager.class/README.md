A DNMEffectManager manages the effects for a specific DNMMovingGameElement by applying the effects accordingly and handling ability usage. It also removes effects once their time has run out, etc.

Instance Variables
	abilities:		<OrderedCollection>
	affectedObject:		<DNMMovingGameElement>
	modifiers:		<OrderedCollection>

abilities
	- A collection of all abilites which are currently possessed by the DNMMovingGameElement 

affectedObject
	- The DNMMovingGameElement that this DNMEffectManager belongs to

modifiers
	- A collection of all the modifiers that are currently applied to the affectedObject
