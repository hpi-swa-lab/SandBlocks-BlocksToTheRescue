as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Snake-Core';
				package: 'Snake-Tests' with: [spec requires: #('Snake-Core')].
			spec
				group: 'default' with: #('Snake-Core' );
				group: 'tests' with: #('Snake-Tests');
				yourself]