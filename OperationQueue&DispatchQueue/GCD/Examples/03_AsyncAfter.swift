//
//  Async After
//

import Foundation

class Client {
    static func run() {
        print(Date())
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            print(Date())
        }
    }
}

// Client.run()

// 2022-05-15 10:30:35 +0000
// 2022-05-15 10:30:40 +0000
