Factions can be hostile to other factions (including its own faction). You can ask a faction if it is hostile to another one, using #isHostileTowards:.
Each faction with a unique name is unique (kind of multiple singletons), such that objects of the same faction really have the an identical Faction object.

Instance Variables
	hostileFactions:		<Set>
	name:		<Symbol>

hostileFactions
	- all faction that this faction is hostile towards

name
	- the name/identifier of this faction
