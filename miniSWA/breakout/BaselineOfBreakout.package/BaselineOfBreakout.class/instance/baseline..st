baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Breakout-Game';
				package: 'Breakout-Tests' with: [spec requires: #('Breakout-Game')].
			spec
				group: 'default' with: #('Breakout-Game');
				group: 'tests' with: #('Breakout-Tests');
				yourself]