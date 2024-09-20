import Testing
@testable import CheckBottle

@Test("Check state throws")
func isBottleThrowing() async throws {
    let bottle = CheckBottle()
    // check whether function throws any error
    #expect(throws: (any Error).self) {
        try bottle.state()
    }
    // check whether function throws specific type of Error
    #expect(throws: BottleError.self) {
        try bottle.state()
    }
    #expect {
        try bottle.state()
    } throws: { error in
        guard let error = error as? BottleError else {
            return false
        }
        return error == .empty
    }
}
