//
//  Block Operation
//

import Foundation

// Client

class Client {
    static func run() {
        let blockOperation = BlockOperation {
            print("Block Operation 1")
        }
        
        let queue = OperationQueue()
        queue.addOperation(blockOperation)
        
        queue.addOperation {
            print("Block Operation 2")
        }
    }
}

// Client.run()

// Block Operation 1
// Block Operation 2
