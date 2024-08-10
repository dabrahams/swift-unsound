import M0
extension Int: P {
  public typealias X = Int
}

public func makeA() -> Any {
  print("returning A<Int> with size", MemoryLayout<A<Int>>.size)
  return A<Int>(42)
}
