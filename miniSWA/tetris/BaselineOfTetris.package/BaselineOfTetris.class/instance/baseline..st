as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Tetris-Core';
				package: 'Tetris-View' with: [spec requires: #('Presenter-Core')];
				package: 'Tetris-Tests' with: [spec requires: #('Presenter-Core')].
			spec
				group: 'default' with: #('Tetris-Core');
				group: 'tests' with: #('Tetris-Tests');
				yourself]