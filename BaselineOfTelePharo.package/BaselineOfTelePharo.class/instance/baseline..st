baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Seamless' with: [ 
			spec repository: 'github://dionisiydk/Seamless:v0.9.x' ].
		spec project: 'SeamlessForServer' copyFrom: 'Seamless' with: [
				spec loads: 'Core' ].
		spec project: 'SeamlessForClient' copyFrom: 'Seamless' with: [
				spec loads: 'default'	].
		spec baseline: 'Calypso' with: [ 
			spec repository: 'github://dionisiydk/Calypso:v0.9.x' ].
		spec project: 'CalypsoEnvironment' copyFrom: 'Calypso' with: [
				spec loads: 'FullEnvironment' ].
		spec project: 'CalypsoBrowser' copyFrom: 'Calypso' with: [
				spec loads: 'default'].				
		spec baseline: 'StateSpecs' with: [
				spec
					repository: 'github://dionisiydk/StateSpecs:v2.4.x';
					loads: #('StateSpecs-Specs' 'StateSpecs-DSL-ClassWords') ].
				
		spec package: 'TelePharo-Core' with: [spec requires: #('StateSpecs')].
		spec package: 'TelePharo-Debugger' with: [spec requires: #('TelePharo-Core')].
		spec package: 'TelePharo-Browser-Server' with: [spec requires: #('CalypsoEnvironment' 'TelePharo-Core')].
		spec package: 'TelePharo-Browser-Client' with: [spec requires: #('TelePharo-Browser-Server' 'CalypsoBrowser')].
		spec package: 'TelePharo-Playground' with: [spec requires: #('TelePharo-Core')].
		spec 
			group: 'Server' with: #('SeamlessForServer' 'TelePharo-Core' 'TelePharo-Browser-Server' 'TelePharo-Debugger' );
			group: 'Client' with: #('SeamlessForClient' 'TelePharo-Core' 'TelePharo-Browser-Client' 'TelePharo-Debugger' 'TelePharo-Playground')].