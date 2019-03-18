baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'BlocksToTheRescue-Core';
				package: 'BlocksToTheRescue-Blocks' with: [spec requires: #('BlocksToTheRescue-Core')];
				package: 'BlocksToTheRescue-StringHolders' with: [spec requires: #('BlocksToTheRescue-Core')];
				package: 'BlocksToTheRescue-Execution' with: [spec requires: #('BlocksToTheRescue-Blocks')];
				package: 'BlocksToTheRescue-Examples' with: [spec requires: #('BlocksToTheRescue-Blocks')];
				package: 'BlocksToTheRescue-Tests' with: [spec requires: #('BlocksToTheRescue-Core' 'BlocksToTheRescue-StringHolders')];
				group: 'default' with: #('BlocksToTheRescue-Core' 'BlocksToTheRescue-Blocks' 'BlocksToTheRescue-StringHolders' 'BlocksToTheRescue-Execution');
				group: 'tests' with: #('BlocksToTheRescue-Tests');
				yourself.
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].