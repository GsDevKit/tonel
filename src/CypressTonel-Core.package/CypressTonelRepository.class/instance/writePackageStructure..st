writing
writePackageStructure: aPackageStructure
  ^ self writer
    writeSnapshot: aPackageStructure snapshot
    inPackageNamed: aPackageStructure packageName