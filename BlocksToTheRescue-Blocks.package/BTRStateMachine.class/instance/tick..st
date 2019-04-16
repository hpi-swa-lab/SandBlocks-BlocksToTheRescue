running
tick: aNumber

	"Tick/step the machine. Argument should be strictly monotonically increasing (e.g. timestamp or tickCount)."
	self currentState tick: aNumber on: self.