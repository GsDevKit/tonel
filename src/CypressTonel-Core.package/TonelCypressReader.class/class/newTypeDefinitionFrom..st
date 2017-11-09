definition creation
newTypeDefinitionFrom: anArray
  | typeClass |
  typeClass := self definitionForType: anArray fourth.
  typeClass = CypressClassDefinition
    ifTrue: [ ^ self newClassDefinitionFrom: anArray ].
  "is extension, no type"
  ^ nil