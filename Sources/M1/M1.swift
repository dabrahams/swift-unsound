import M0
extension Int: P {
  public typealias X = Int
}

public func makeA() -> A<Int> {
  print("returning A<Int> with size", MemoryLayout<A<Int>>.size)
  return A(0)
}
