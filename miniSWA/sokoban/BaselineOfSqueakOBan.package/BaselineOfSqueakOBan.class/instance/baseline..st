baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'GM' with: [spec repository: 'github://hpi-swa-teaching/GameMecha:master/source'];
				package: 'Squeak-O-Ban-Core' with: [spec requires: #('GM')];
				package: 'Squeak-O-Ban-Graphics' with: [spec requires: #('Squeak-O-Ban-Core')];
				package: 'Squeak-O-Ban-Tests' with: [spec requires: #('Squeak-O-Ban-Core')];
				group: 'default' with: #('Squeak-O-Ban-Core', 'Squeak-O-Ban-Graphics');
				group: 'tests' with: #('Squeak-O-Ban-Tests');
				yourself]