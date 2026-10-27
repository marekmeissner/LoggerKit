# LoggerKit

Extracted Kit for Logging events in Swift 

```swift
logger.registerHandler(for: .error) { message in
    print("[Error]: \(message)")
}

logger.registerHandler(for: .info) { message in
    print("[Info]: \(message)")
}

logger.registerHandler(for: .warning) { message in
    print("[Warning]: \(message)")
}

logger.log("Error log", for: .error)
logger.log("Warning log", for: .warning)
logger.log("Info log", for: .info)
```

