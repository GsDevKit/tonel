*cypresstonel-core
name: aClassName superclassName: aSuperclassName category: aCategory instVarNames: someInstanceVariableNames classInstVarNames: someClassInstanceVariableNames classVarNames: someClassVariableNames poolDictionaryNames: somePoolDictionaryNames comment: aComment type: type
  | st |
  st := type.
  st == #'normal'
    ifTrue: [ st := '' ].
  ^ self
    name: aClassName
    superclassName: aSuperclassName
    category: aCategory
    instVarNames: someInstanceVariableNames
    classInstVarNames: someClassInstanceVariableNames
    classVarNames: someClassVariableNames
    poolDictionaryNames: somePoolDictionaryNames
    comment: aComment
    subclassType: st
    options: #()