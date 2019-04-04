initialization
initialize
	super initialize.	
	self 
		color: Color transparent;
		attackStrengthNamed: #weak;
		defenseStrengthNamed: #godly;
		attackDirections: { #left . #right . #top . #bottom }.
	