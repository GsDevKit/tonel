definition creation
newClassDefinitionFrom: anArray
  | metadata |
  metadata := anArray sixth.
  ^ CypressClassDefinition
    name: (metadata at: #'name')
    superclassName: (metadata at: #'superclass')
    category: (metadata at: #'category')
    instVarNames: (metadata at: #'instVars' ifAbsent: [ #() ])
    classInstVarNames: (metadata at: #'classInstVars' ifAbsent: [ #() ])
    classVarNames: (metadata at: #'classVars' ifAbsent: [ #() ])
    poolDictionaryNames: (metadata at: #'pools' ifAbsent: [ #() ])
    comment: (anArray second ifNil: [ '' ])
    type: (metadata at: #'type' ifAbsent: [ #'normal' ]) asSymbol