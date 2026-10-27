import Testing
@testable import LoggerKit

struct LoggerKitTests {
    @Test func registersHandlersAndExecutesThem() async throws {
        let logger = Logger()

        var errorCalled = false, warningCalled = false, infoCalled = false

        logger.registerHandler(for: .error) { message in
            errorCalled = true
            print("[Error]: \(message)")
        }

        logger.registerHandler(for: .info) { message in
            infoCalled = true
            print("[Info]: \(message)")
        }

        logger.registerHandler(for: .warning) { message in
            warningCalled = true
            print("[Warning]: \(message)")
        }

        logger.log("Error log", for: .error)
        #expect(errorCalled == true)

        logger.log("Warning log", for: .warning)
        #expect(warningCalled == true)

        logger.log("Info log", for: .info)
        #expect(infoCalled == true)
    }
}
