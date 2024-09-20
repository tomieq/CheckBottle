// The Swift Programming Language
// https://docs.swift.org/swift-book

enum BottleError: Error {
    case empty
    case full
}

class CheckBottle {
    func state() throws {
        throw BottleError.empty
    }
}
