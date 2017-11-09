definition creation
newMethodDefinitionForClassNamed: className classIsMeta: meta selector: selector category: category source: source
  ^ MCMethodDefinition
    className: className
    classIsMeta: meta
    selector: selector
    category: category
    timeStamp: nil
    source: source