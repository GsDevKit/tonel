reading
readPackageStructureForPackageNamed: packageName
  | reader |
  reader := self reader
    packageName: packageName;
    packageStructure: (RwCypressPackageStructure named: packageName);
    readPackageStructure;
    yourself.
  ^ reader