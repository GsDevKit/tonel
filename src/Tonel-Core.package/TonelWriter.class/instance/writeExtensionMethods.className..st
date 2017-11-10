writing
writeExtensionMethods: methods className: className
  | nl |
  nl := self newLine.
  self packageWriter
    writePackageFileNamed: className , '.extension.st'
    do: [ :s | 
      s << 'Extension '
        << (self toSTON: {(#'name' -> className asSymbol)} asDictionary) << nl.
      (methods sorted: [ :a :b | a selector < b selector ])
        do: [ :each | self writeMethodDefinition: each on: s ] ]