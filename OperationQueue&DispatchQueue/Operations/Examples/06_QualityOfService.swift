//
//  Quality Of Service
//

import Foundation

// Client

class Client {
    static func run() {
        let blockOperation = BlockOperation { print("Six") }
        blockOperation.qualityOfService = .userInitiated
        
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 2
        for i in 1...5 {
            queue.addOperation { print(i) } // qualityOfService = .default
        }
        queue.addOperation(blockOperation)
    }
}

// Client.run()

// 2
// 1
// Six
// 3
// 5
// 4
