reading
on: rootDirectoryPath fileName: packageName
  | reader |
  reader := self new.
  ^ reader
    packageDirectory:
        rootDirectoryPath , reader fileUtils pathNameDelimiter , packageName;
    packageName: packageName;
    yourself