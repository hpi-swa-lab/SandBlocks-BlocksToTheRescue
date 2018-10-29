baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Breakout';
				package: 'Breakout-Core';
				package: 'Breakout-Tests' with:
					[spec requires: #('game')].
			spec
				group: 'game' with: #('Breakout', 'Breakout-Core');
				group: 'tests' with: #('Breakout-Tests');
				yourself]