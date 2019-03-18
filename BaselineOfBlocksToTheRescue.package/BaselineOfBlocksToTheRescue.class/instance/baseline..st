baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'BlocksToTheRescue-Core';
				package: 'BlocksToTheRescue-Tests' with: [spec requires: #('BlocksToTheRescue-Core')];
				group: 'default' with: #('BlocksToTheRescue-Core');
				group: 'tests' with: #('BlocksToTheRescue-Tests');
				yourself.
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].