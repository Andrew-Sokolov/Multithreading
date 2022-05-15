//
//  Timer
//

import Foundation

class Client {
    private static var timer: DispatchSourceTimer?
    
    private static func stopTimer() {
        timer?.cancel()
        timer = nil
    }
    
    private static func startTimer() {
        stopTimer()
        
        let concurrentQueue = DispatchQueue(label: "ConcurrentQueue", attributes: .concurrent)
        
        timer = DispatchSource.makeTimerSource(queue: concurrentQueue)
        timer!.schedule(deadline: .now(), repeating: .seconds(5), leeway: .milliseconds(100))
        
        timer!.setEventHandler {
            print(Date())
        }
        
        timer!.resume()
    }
    
    static func run() {
        startTimer()
        sleep(25)
        stopTimer()
    }
}

// Client.run()

// 2022-05-15 10:32:58 +0000
// 2022-05-15 10:33:03 +0000
// 2022-05-15 10:33:08 +0000
// 2022-05-15 10:33:13 +0000
// 2022-05-15 10:33:18 +0000
