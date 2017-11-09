baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Tonel-Core';
        package: 'Tonel-Tests' with: [ spec requires: #('Tonel-Core') ];
        package: 'Tonel-Monticello-Tests'
          with: [ spec requires: #('Tonel-Tests') ];
        package: 'MonticelloTonel-Core'
          with: [ spec requires: #('Tonel-Core') ];
        package: 'MonticelloTonel-Tests'
          with: [ spec requires: #('MonticelloTonel-Core') ];
        yourself.
      spec
        group: 'monticello' with: #('MonticelloTonel-Core');
        group: 'monticello tests'
          with: #('MonticelloTonel-Tests' 'Tonel-Monticello-Tests');
        yourself ].
  spec
    for: #'pharo'
    do: [ 
      spec
        package: 'Tonel-Core' with: [ spec includes: #('Tonel-Pharo-Core') ];
        package: 'Tonel-Pharo-Core' with: [ spec requires: #('Tonel-Core') ];
        package: 'MonticelloTonel-Core'
          with: [ spec includes: #('MonticelloTonel-FileSystem' 'MonticelloTonel-Pharo-Core') ];
        package: 'MonticelloTonel-FileSystem'
          with: [ spec requires: #('MonticelloTonel-Core') ];
        package: 'MonticelloTonel-Pharo-Core'
          with: [ spec requires: #('MonticelloTonel-Core') ];
        package: 'MonticelloTonel-Tests'
          with: [ spec includes: #('MonticelloTonel-Pharo-Tests') ];
        package: 'MonticelloTonel-Pharo-Tests'
          with: [ spec requires: #('MonticelloTonel-Tests') ];
        yourself.
      spec
        group: 'default' with: #('monticello' 'monticello tests');
        yourself ].
  spec
    for: #'gemstoneCommon'
    do: [ 
      spec
        package: 'Tonel-Core'
          with: [ spec includes: #('Tonel-GemStoneCommon-Core') ];
        package: 'Tonel-GemStoneCommon-Core'
          with: [ spec requires: #('Tonel-Core') ];
        yourself ].
  spec
    for: #'gemstone64'
    do: [ 
      spec
        package: 'Tonel-Core'
          with: [ spec includes: #('Tonel-GemStoneBase-Core') ];
        package: 'Tonel-GemStoneBase-Core'
          with: [ spec requires: #('Tonel-Core') ];
        yourself.
      spec
        group: 'cypress' with: #('Tonel-Core');
        group: 'cypress tests' with: #('Tonel-Tests');
        group: 'default' with: #('cypress' 'cypress tests');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Tonel-Core' with: [ spec includes: #('Tonel-GemStone-Core') ];
        package: 'Tonel-GemStone-Core' with: [ spec requires: #('Tonel-Core') ];
        package: 'MonticelloTonel-Core'
          with: [ 
              spec
                includes:
                  #('MonticelloTonel-GemStone-Directory' 'MonticelloTonel-GemStone-Core') ];
        package: 'MonticelloTonel-GemStone-Directory'
          with: [ spec requires: #('MonticelloTonel-Core') ];
        package: 'MonticelloTonel-GemStone-Core'
          with: [ spec requires: #('MonticelloTonel-Core') ];
        package: 'MonticelloTonel-Tests'
          with: [ spec includes: #('MonticelloTonel-GemStone-Tests') ];
        package: 'MonticelloTonel-GemStone-Tests'
          with: [ spec requires: #('MonticelloTonel-Tests') ];
        yourself.
      spec
        group: 'default' with: #('monticello' 'monticello tests');
        yourself ]