initializing
comparingPackages: someNames fromDirectory: aDirectory
  | repo |
  (directoryPackageMap at: aDirectory ifAbsentPut: [ OrderedCollection new ])
    addAll: someNames.
  repo := CypressAbstractRepository
    onUrl: (CypressUrl absoluteFromText: 'tonel:' , aDirectory)
    alias: ''.
  someNames
    do: [ :packageName | 
      diskSnapshots
        at: packageName
        put: (repo readPackageStructureForPackageNamed: packageName).
      imageSnapshots
        at: packageName
        put: (CypressPackageDefinition named: packageName) snapshot ]