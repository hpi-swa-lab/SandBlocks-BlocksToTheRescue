baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Squeak-O-Ban-Core';
				package: 'Squeak-O-Ban-Graphics' with: [spec requires: #('Squeak-O-Ban-Core')];
				package: 'Squeak-O-Ban-Tests' with: [spec requires: #('Squeak-O-Ban-Core')];
				group: 'default' with: #('Squeak-O-Ban-Core', 'Squeak-O-Ban-Graphics');
				group: 'tests' with: #('Squeak-O-Ban-Tests');
				yourself]