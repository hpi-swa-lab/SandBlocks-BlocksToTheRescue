as yet unclassified
stepOver

	[currentStep resume]
		on: PPDebugStep 
		do: [ :step | self currentStep: step].