//
//  Semaphore
//

import Foundation

class Client {
    static func run() {
        let semaphore = DispatchSemaphore(value: 2)
        
        for _ in 1...8 {
            DispatchQueue.global().async {
                semaphore.wait()
                sleep(2)
                print(Date())
                semaphore.signal()
            }
        }
    }
}

// Client.run()

// 2022-05-15 10:48:50 +0000
// 2022-05-15 10:48:50 +0000
// 2022-05-15 10:48:52 +0000
// 2022-05-15 10:48:52 +0000
// 2022-05-15 10:48:54 +0000
// 2022-05-15 10:48:54 +0000
// 2022-05-15 10:48:56 +0000
// 2022-05-15 10:48:56 +0000
