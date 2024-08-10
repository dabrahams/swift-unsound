public protocol P { associatedtype X }

public struct A<T: P> {
  public let x: T.X

  public init(_ x: T.X) { self.x = x }
}
