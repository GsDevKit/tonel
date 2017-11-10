definition creation
definitionForType: aString
  aString = TonelWriter classLabel
    ifTrue: [ ^ CypressClassDefinition ].
  aString = TonelWriter extensionLabel
    ifTrue: [ ^ nil ].
  TonelParseError signal: 'Unknown type declaration.'