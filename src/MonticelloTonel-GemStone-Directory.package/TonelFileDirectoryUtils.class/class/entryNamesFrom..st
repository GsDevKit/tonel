utilities
entryNamesFrom: aDirectory
  "Answer file and directory names for the contents of aDirectory."

  ^ (aDirectory entries collect: [ :each | each name ]) sorted