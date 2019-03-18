baseline
preLoad

	[(SystemVersion current version matchesRegexIgnoringCase: 'Squeak[0-5]\.[01]\D?.*')
			ifTrue: [SqueakVersion error: 'Outdated version - This project requires Squeak 5.2 or newer!']]
		on: MessageNotUnderstood
		do: [SqueakVersion error: 'Outdated version - This project requires Squeak 5.2 or newer!'].