reading
readPackageStructureForPackageNamed: packageName
  | reader |
  reader := self reader
    packageName: packageName;
    loadDefinitions;
    yourself.
  ^ CypressSnapshot definitions: reader definitions