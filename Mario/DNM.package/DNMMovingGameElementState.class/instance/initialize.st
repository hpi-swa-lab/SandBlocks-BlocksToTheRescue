initialization
initialize
	"Provide a default initialization that is not doing much."
	requestedAlarms := Set new.
	self 
		maxSpeed: (0 @ 0);
		acceleration: (0 @ 0);
		specialKeycodeDictionary: Dictionary new;
		image: (DNMImageRessourceManager singleton getRessource: #placeholder);
		onTimerBlock: [:me | ];
		onCollisionBlock: [:aGameElement :me | ];
		onEnterBlock: [:me | ];
		onExitBlock: [:me | ];
		onTakeDamageBlock: [:me | ];
		traversableBlock: [:aGameElement :me | false];
		faction: nil;
		attackStrength: #normal;
		defenseStrength: #normal;
		attackDirections: OrderedCollection new;
		movementStrategy: (DNMMovementStrategyNone new);
		abilityStrategy: (DNMAbilityStrategyNone new).