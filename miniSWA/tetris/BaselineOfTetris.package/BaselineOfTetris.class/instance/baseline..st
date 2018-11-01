baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Tetris-Core';
				package: 'Tetris-View' with: [spec requires: #('Tetris-Core')];
				package: 'Tetris-Tests' with: [spec requires: #('Tetris-Core')].
			spec
				group: 'default' with: #('Tetris-Core' 'Tetris-View');
				group: 'tests' with: #('Tetris-Tests');
				yourself]