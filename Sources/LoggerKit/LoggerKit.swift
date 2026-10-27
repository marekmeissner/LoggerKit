import Foundation

enum LogLevel {
    case info
    case warning
    case error
}

class Logger {
    typealias LogHandler = (String) -> Void

    private var handlers: [LogLevel: LogHandler] = [:]

    func registerHandler(for level: LogLevel, handler: @escaping LogHandler) {
        handlers[level] = handler
    }

    func log(_ message: String, for level: LogLevel) {
        if let logHandler = handlers[level] {
            logHandler(message)
        }
    }
}
