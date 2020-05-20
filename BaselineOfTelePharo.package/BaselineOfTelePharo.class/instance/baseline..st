baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
					baseline: 'Calypso'
					with: [ spec repository: 'github://pharo-ide/Calypso:v0.16.5/src' ].
			spec
				project: 'CalypsoProcessBrowser'
				copyFrom: 'Calypso'
				with: [ spec loads: 'ProcessBrowser' ].
			spec
				baseline: 'Seamless'
				with: [ spec repository: 'github://pharo-ide/Seamless:v2.0.1' ].
			spec
				project: 'SeamlessForServer'
				copyFrom: 'Seamless'
				with: [ spec loads: 'Core' ].
			spec
				project: 'SeamlessForClient'
				copyFrom: 'Seamless'
				with: [ spec loads: 'default' ].
			spec
				baseline: 'StateSpecs'
				with: [ spec
						repository: 'github://dionisiydk/StateSpecs:v4.0.2';
						loads: #('StateSpecs-Specs' 'StateSpecs-DSL-ClassWords') ].
			spec
				for: #'pharo7.x'
				do: [ "Dependencies for Pharo7, Calypso"
					spec
						baseline: 'Calypso'
						with: [ spec repository: 'github://pharo-ide/Calypso:v0.16.5/src' ].
					spec
						project: 'CalypsoMinimalEnvironment'
						copyFrom: 'Calypso'
						with: [ spec loads: #('MinimalEnvironment' 'ProcessEnvironment') ].
					spec
						project: 'CalypsoFullEnvironment'
						copyFrom: 'Calypso'
						with: [ spec loads: #('FullEnvironment' 'ProcessEnvironment') ].
					spec
						project: 'CalypsoBrowser'
						copyFrom: 'Calypso'
						with: [ spec loads: 'default' ].
					spec
						group: 'Server'
						with: #('MinimalServer' 'CalypsoFullEnvironment').
					spec
						package: 'TelePharo-Browser-Server'
						with: [ spec requires: #('CalypsoMinimalEnvironment' 'TelePharo-Core') ].
					spec
						package: 'TelePharo-Browser-Client'
						with: [ spec requires: #('TelePharo-Browser-Server' 'CalypsoBrowser') ] ].
			spec
				package: 'TelePharo-Core'
				with: [ spec requires: #('StateSpecs') ].
			spec
				package: 'TelePharo-Debugger'
				with: [ spec requires: #('TelePharo-Core') ].
			spec
				package: 'TelePharo-Browser-Server'
				with: [ spec requires: #('TelePharo-Core') ].
			spec
				package: 'TelePharo-Browser-Client'
				with: [ spec requires: #('TelePharo-Browser-Server') ].
			spec
				package: 'TelePharo-Playground'
				with: [ spec requires: #('TelePharo-Core') ].
			spec
				group: 'MinimalServer'
					with:
					#('SeamlessForServer' 'TelePharo-Core' 'TelePharo-Browser-Server' 'TelePharo-Debugger');
				group: 'Server' with: #('MinimalServer');
				group: 'Client'
					with:
					#('SeamlessForClient' 'TelePharo-Core' 'TelePharo-Browser-Client' 'TelePharo-Debugger' 'TelePharo-Playground' 'CalypsoProcessBrowser') ].
