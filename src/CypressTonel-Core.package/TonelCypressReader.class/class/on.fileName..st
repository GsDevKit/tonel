reading
on: rootDirectoryPath fileName: packageName
  | repository |
  repository := CypressTonelRepository on: rootDirectoryPath.
  ^ (self forRepository: repository)
    packageName: packageName;
    yourself