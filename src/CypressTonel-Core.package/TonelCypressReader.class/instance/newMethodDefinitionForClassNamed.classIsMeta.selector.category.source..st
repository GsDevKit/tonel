parser support
newMethodDefinitionForClassNamed: className classIsMeta: meta selector: selector category: category source: source
  ^ self class
    newMethodDefinitionForClassNamed: className
    classIsMeta: meta
    selector: selector
    category: category
    source: source