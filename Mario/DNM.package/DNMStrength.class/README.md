A DNMStrength is an object used to identfiy the strength of a CollidingGameElement and handle who damages who and how much.
Objects can call #attack: to let their strength deceide, if and how it can attack a defender.
Each strength has a unique name and only exists once, its kind of like a singleton, but with multiple unique instances.

Instance Variables
	attackActionByDefenseStrength:		<Dictionary>
	name:		<Symbol>

attackActionByDefenseStrength
	- What to do for specific other strengths

name
	- The name of this strength
