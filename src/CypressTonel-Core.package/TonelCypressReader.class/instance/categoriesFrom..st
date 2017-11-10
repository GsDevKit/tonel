private
categoriesFrom: aCollection
  ^ ((aCollection select: [ :each | each isClassDefinition ])
    collect: [ :each | each category asSymbol ]) asSet sorted: [ :a :b | a < b ]