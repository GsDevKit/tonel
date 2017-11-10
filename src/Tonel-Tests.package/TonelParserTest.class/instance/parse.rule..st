private
parse: aString rule: rule
  | parser |
  parser := TonelParser onString: aString forReader: self.
  ^ parser perform: rule