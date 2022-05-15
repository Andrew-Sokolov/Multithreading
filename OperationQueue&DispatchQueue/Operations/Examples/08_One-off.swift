//
//  One-off
//

import Foundation

// Client

class Client {
    static func run() {
        let blockOperation = BlockOperation {
            print("Block Operation")
        }
        
        let queue = OperationQueue()
        queue.addOperation(blockOperation)
        queue.addOperation(blockOperation) // Terminating app
    }
}

// Client.run()
