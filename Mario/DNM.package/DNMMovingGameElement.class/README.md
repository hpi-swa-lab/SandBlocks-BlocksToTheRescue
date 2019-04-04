A DNMMovingGameElement is a special DNMCollidingGameElement that can move. Therefore it has methods like move and addVelocity:.
The actual behaviour of a DNMMovingGameElement is specified by its state (DNMMovingGameElementState), which can be changed with #changeToState:.
Also, DNMMovingGameElements can have effects applied on them.

Instance Variables
	effectManager:		<DNMEffectManager>
	state:		<DNMMovingGameElementState>
	velocity:		<Point>

effectManager
	- Manages the effects for this object.

state
	- The corresponding state.

velocity
	- The current velocity.
