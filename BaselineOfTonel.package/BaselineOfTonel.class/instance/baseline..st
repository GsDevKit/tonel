baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'MonticelloTonel-Core';
			package: 'MonticelloTonel-Tests' with: [ spec requires: #( 'MonticelloTonel-Core' ) ].
		
		spec 
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('MonticelloTonel-Core' );
			group: 'tests' with: #('MonticelloTonel-Tests') ].

	spec for: #'pharo' do: [
		spec 
			package: 'MonticelloTonel-Core' 
				with: [ spec includes: #( 'MonticelloTonel-FileSystem' 'MonticelloTonel-Pharo-Core' ) ];
			package: 'MonticelloTonel-FileSystem' 
				with: [ spec  requires: #( 'MonticelloTonel-Core' ) ];
			package: 'MonticelloTonel-Pharo-Core' 
				with: [ spec requires: #( 'MonticelloTonel-Core' ) ];
			yourself.
		spec 
			group: 'core' with: #('MonticelloTonel-FileSystem');
			yourself].

	spec for: #'gemstone' do: [
		spec 
			package: 'MonticelloTonel-Core' 
				with: [ spec includes: #( 'MonticelloTonel-GemStone-Directory' 'MonticelloTonel-GemStone-Core' ) ];
			package: 'MonticelloTonel-GemStone-Directory' 
				with: [ spec  requires: #( 'MonticelloTonel-Core' ) ];
			package: 'MonticelloTonel-GemStone-Core' 
				with: [ spec requires: #( 'MonticelloTonel-Core' ) ];
			yourself.
		spec 
			group: 'core' with: #('MonticelloTonel-GemStone-Directory');
			yourself].
