//
//  Concurrent Loop
//

import Foundation

class Client {
    static func run() {
        DispatchQueue.concurrentPerform(iterations: 5) { (i) in
            print(i)
        }
    }
}

// Client.run()

// 3
// 2
// 4
// 0
// 1
