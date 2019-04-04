A DNMMovingGameElementState is the State for a DNMMovingGameElement almost everything regarding its behaviour is handled via it's state object. The state is a configurable object that enables you to add a lot of Blocks to specify behaviour. These blocks all have default values so if nothing special should happen you just leave them the way they are. GameElementStates are created in the DNMStateFactory.

Instance Variables
	abilityStrategy:		<DNMAbilityStrategy>
	acceleration:		<Point>
	attackDirections:		<OrderedCollection>
	attackStrength:		<Symbol>
	defenseStrength:		<Symbol>
	faction:		<DNMFaction>
	image:		<ImageMorph>
	maxSpeed:		<Point>
	movementStrategy:		<DNMMovementStrategy>
	onCollisionBlock:		<Block>
	onEnterBlock:		<Block>
	onExitBlock:		<Block>
	onTakeDamageBlock:		<Block>
	onTimerBlock:		<Block>
	representedObject:		<DNMMovingGameElement>
	requestedAlarms:		<Set>
	specialKeycodeDictionary:		<Dictionary>
	traversableBlock:		<Block>

abilityStrategy
	- Used to determine how to use Abilites

acceleration
	- The current acceleration

attackDirections
	- All possilbe Attack directions

attackStrength
	- Strength of attacks

defenseStrength
	- Defensive power

faction
	- Determines to what DNMFaction the represented Element belongs

image
	- How does the Element look?

maxSpeed
	- the maximum speed

movementStrategy
	- Determines how the represented Element moves

onCollisionBlock
	- What happens when colliding with something else?

onEnterBlock
	- What happens when entering this state?

onExitBlock
	- What happens when leaving this state?

onTakeDamageBlock
	- What happens if the represented element takes damage?

onTimerBlock
	- If the state needs a timer use this to specify what happens after the timer ran out.

representedObject
	- The represented MovingGameElement

requestedAlarms
	- All requested alarms (timer)

specialKeycodeDictionary
	- A dictionary that manages any special keycodes that might be needed

traversableBlock
	- Determines wether the reprented object is traversable right now or not
