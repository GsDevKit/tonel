definition creation
newMethodDefinitionForClassNamed: className classIsMeta: meta selector: selector category: category source: source
  ^ CypressMethodDefinition
    className: className
    classIsMeta: meta
    selector: selector
    category: category
    source: source