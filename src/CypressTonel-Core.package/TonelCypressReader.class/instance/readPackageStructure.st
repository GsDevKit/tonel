reading
readPackageStructure
  self loadDefinitions.
  ^ packageStructure
    fromSnapshot: definitions;
    yourself