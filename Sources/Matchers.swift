import Foundation

extension Evaluation where T: Collection {
    public func beEmpty() -> TestResult.State {
        return .init(passed: evaluate { $0.isEmpty })
    }
}

extension Evaluation where T: Sequence, T.Iterator.Element: Equatable {
    public func contain(_ value: T.Iterator.Element) -> TestResult.State {
        return .init(passed: evaluate { $0.contains(value) })
    }
}

extension Evaluation where T == Bool {
    public func beTrue() -> TestResult.State {
        return .init(passed: evaluate { $0 })
    }
}

public func == <T>(_ expression: Expression<Optional<[T]>>, _ expected: [T]) -> TestResult.State
    where T: Equatable
{
    guard let actual = expression.actual else {
        return .gotNil
    }

    return .init(passed: actual == expected)
}

public func != <T>(_ expression: Expression<Optional<[T]>>, _ expected: [T]) -> TestResult.State
    where T: Equatable
{
    guard let actual = expression.actual else {
        return .gotNil
    }

    return .init(passed: actual != expected)
}

public func == <T>(_ expression: Expression<Optional<T>>, _ expected: T) -> TestResult.State
    where T: Equatable
{
    guard let actual = expression.actual else {
        return .gotNil
    }

    return .init(passed: actual == expected)
}

public func != <T>(_ expression: Expression<Optional<T>>, _ expected: T) -> TestResult.State
    where T: Equatable
{
    guard let actual = expression.actual else {
        return .gotNil
    }

    return .init(passed: actual != expected)
}
