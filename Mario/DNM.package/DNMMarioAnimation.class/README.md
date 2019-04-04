A DNMMarioAnimation is responsible for choosing the right gif of the player which is shown. When jumping (e.g. changeToJumpRight) a different image is used as if he runs (e.g. changeToRunRight).
The adjusting of the its image goes asynchronous to the stepping of the DNMGameWorld so the DNMMarioAnimation steps itself.

Instance Variables
	currentGIF:		<Symbol>
	animationsBySymbol:		<Dictionary>

currentGIF
	- The symbol of the AnimatedImageMorph Mario currently has.

animationsBySymbol
	- A mapping of all symbols of GIFs to its corresponding AnimatedImageMorph.