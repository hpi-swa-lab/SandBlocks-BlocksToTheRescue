as yet unclassified
visitSpacer: aPPSpacer

	"PPSpacers just have to be skipped, so just return"
	self 
		instructionPointer: self stack pop;
		increaseInstructionPointer.
	
	"self step."
	"Otherwise, it would take one instruction during which the spacer would be executed, which does not really do anything"