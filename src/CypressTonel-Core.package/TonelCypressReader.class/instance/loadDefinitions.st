loading
loadDefinitions
  | definitionOrders newDefinitions newCategories |
  definitionOrders := self class definitionOrders.
  newDefinitions := (((self fileUtils
    directoryEntriesFrom: self packageDirectory)
    select: [ :each | self canBeLoaded: each ])
    collect: [ :each | 
      self fileUtils
        readStreamFor: each
        do: [ :s | TonelParser parseStream: s forReader: self ] ])
    flattened
    sort: [ :a :b | (definitionOrders at: a class) < (definitionOrders at: b class) ].
  newCategories := self categoriesFrom: newDefinitions.
  (newCategories includes: self packageName asSymbol)
    ifFalse: [ newCategories := newCategories copyWithFirst: self package name ].
  definitions := newDefinitions sort